const std = @import("std");
const builtin = @import("builtin");

const find_build_sources = @import("util/find-build-sources.zig");

const libnds_flags = .{
//     "-Wshadow",
    "-DPATH_MAX=1024", // HACK: this should not be needed, limits.h is somehow not included properly by Zig/LLVM
    "-Dpid_t=__pid_t", // TODO: figure out why this is necessary
//     "-Werror",
};
const default_warn_flags = .{
    // TODO: add -Werror, otherwise these warnings are ignored and not displayed if the compilation was successful
//     "-Wall", "-Wextra", "-Wpedantic", "-Wstrict-prototypes",
//     "-Werror",
};
const default_c_flags = default_warn_flags ++ .{ "-std=gnu23" };
const default_cpp_flags = default_warn_flags ++ .{ "-std=gnu++23" };
const default_asm_flags = default_warn_flags;

const ToolOptions = struct {
    target: std.Build.ResolvedTarget,
    optimize: std.builtin.OptimizeMode,
    build_step: *std.Build.Step,
    test_step: *std.Build.Step,
};
const LibOptions = struct {
    nds9_target: std.Build.ResolvedTarget,
    nds7_target: std.Build.ResolvedTarget,
    optimize: std.builtin.OptimizeMode,
    make_libc_file: *std.Build.Step.Run,
};
const CrtOptions = struct {
    nds9_target: std.Build.ResolvedTarget,
    nds7_target: std.Build.ResolvedTarget,
    optimize: std.builtin.OptimizeMode,
};
const DefaultArm7Options = struct {
    nds7_target: std.Build.ResolvedTarget,
    optimize: std.builtin.OptimizeMode,
    libnds7: *std.Build.Step.Compile,
    dswifi7: *std.Build.Step.Compile,
//     maxmod7: *std.Build.Step.Compile,
    make_libc_file: *std.Build.Step.Run,
    compile_libc_arm7: *std.Build.Step.Compile,
};

pub fn build(b: *std.Build) !void {
    const optimize = b.standardOptimizeOption(.{});

    const test_step = b.step("test", "Run tests");
    const tools_step = b.step("tools", "Build all tools");

    const tools_target_triple = b.option(
        []const u8,
        "tools-target",
        "The CPU architecture, OS, and ABI to build tools for",
    );
    // consider adding mcpu and dynamic linker options as standardTargetOptions does
    const tools_target = b.resolveTargetQuery(
        if (tools_target_triple) |triple|
            try std.Target.Query.parse(.{ .arch_os_abi = triple })
        else
            .{}
    );

    const tools_optimize = .ReleaseSafe;
    const tool_options = .{
        .target = tools_target,
        .optimize = tools_optimize,
        .build_step = tools_step,
        .test_step = test_step,
    };
    // grit is needed to compile libnds, compile it natively
    const host_grit = buildGrit(b, .{
        .target = b.resolveTargetQuery(.{}),
        .optimize = tools_optimize,
        .build_step = b.default_step,
        .test_step = test_step,
    });
    _ = buildGrit(b, tool_options);
    _ = buildNdstool(b, tool_options);
    _ = buildBin2c(b, tool_options);
    _ = buildDldipatch(b, tool_options);
    _ = buildDlditool(b, tool_options);
    _ = buildMkfatimg(b, tool_options);
    _ = buildMmutil(b, tool_options);
    _ = buildSqueezerw(b, tool_options);
    _ = buildTeaktool(b, tool_options);

    const libc_file_builder = b.addExecutable(.{
        .name = "libc_file_builder",
        .target = b.resolveTargetQuery(.{}), // native
        // Optimization passes waste more time than the program takes to run
        .optimize = .Debug,
        .root_source_file = b.path("util/make-libc-file.zig"),
    });



    const nds9_target_thumb = b.resolveTargetQuery(.{
        // nice resource: https://wiki.debian.org/ArmEabiPort#Thumb_interworking_suggests_armv4t
        // TODO: check if thumb interworking must be enabled
        // debian.org suggests it is required by .eabi
        .cpu_arch = .thumb,
        .os_tag = .freestanding,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.arm946e_s },
        .abi = .eabi,
    });
    const nds7_target_thumb = b.resolveTargetQuery(.{
        .cpu_arch = .thumb,
        .os_tag = .freestanding,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.arm7tdmi },
        .abi = .eabi,
    });
//     const nds7_target_arm = b.resolveTargetQuery(.{
//         .cpu_arch = .arm,
//         .os_tag = .freestanding,
//         .cpu_model = .{ .explicit = &std.Target.arm.cpu.arm7tdmi },
//         .abi = .eabi,
//     });
    const picolibc_arm7 = b.dependency("picolibc", .{
        .target = nds7_target_thumb,
        .optimize = optimize,
    });
//     const picolibc_arm9 = b.dependency("picolibc", .{
//         .target = nds9_target_thumb,
//         .optimize = optimize,
//     });

    const crt_options = .{
        .nds9_target = nds9_target_thumb,
        .nds7_target = nds7_target_thumb,
        .optimize = optimize,
    };
    const crt_directory = buildCrts(b, crt_options);


    const make_libc_file = b.addRunArtifact(libc_file_builder);
    // TODO: remove dependency on external toolchain
    make_libc_file.addArg("include_dir=/opt/wonderful/toolchain/gcc-arm-none-eabi/arm-none-eabi/include");
    make_libc_file.addArg("sys_include_dir=/opt/wonderful/toolchain/gcc-arm-none-eabi/arm-none-eabi/include");
//     make_libc_file.addPrefixedDirectoryArg("include_dir=", picolibc_arm7.artifact("c").getEmittedIncludeTree());
//     make_libc_file.addPrefixedDirectoryArg("sys_include_dir=", picolibc_arm7.artifact("c").getEmittedIncludeTree());
    make_libc_file.addPrefixedDirectoryArg("crt_dir=", crt_directory.getDirectory());
    b.default_step.dependOn(&make_libc_file.step);

    const lib_options = .{
        .nds9_target = nds9_target_thumb,
        .nds7_target = nds7_target_thumb,
        .optimize = optimize,
        .make_libc_file = make_libc_file,
    };
    const libnds = buildLibnds(b, lib_options);
    const dswifi = buildDswifi(b, lib_options);
//     const maxmod = build_maxmod(b, lib_options);



    const libnds_dep = b.dependency("libnds", .{});


    const libnds_pngs = try find_build_sources.findDep(libnds_dep, "graphics", isPng);
    const wf = b.addWriteFiles();
    libnds.arm9.addIncludePath(wf.getDirectory());

    for (libnds_pngs.inner) |png| {
        const image_path = libnds_pngs.path(png);
        const output_path = std.mem.trimRight(u8, png, ".png");
        const convert = b.addRunArtifact(host_grit);

        convert.setCwd(wf.getDirectory());

        convert.addFileArg(image_path);
        convert.addArg("-ftc"); // output file type C
        convert.addArg("-W1"); // -W1 for error messages, -W2 for error + warnings
        convert.addArg("-o");
        convert.addArg(output_path);

        const c_file = try std.mem.concat(b.allocator, u8, &.{ output_path, ".c" });
        defer b.allocator.free(c_file);

        libnds.arm9.addCSourceFile(.{
            .file = wf.getDirectory().path(b, c_file),
            .flags = &default_c_flags,
            .language = .c,
        });
        libnds.arm9.step.dependOn(&convert.step);
    }



    _ = buildDefaultArm7(b, .{
        .nds7_target = nds7_target_thumb,
        .optimize = optimize,
        .libnds7 = libnds.arm7,
        .dswifi7 = dswifi.arm7,
//         .maxmod7 = maxmod.arm7,
        .make_libc_file = make_libc_file,
        .compile_libc_arm7 = picolibc_arm7.artifact("c"),
    });

    b.default_step.dependOn(tools_step);
}
fn isPng(path: []const u8) bool {
    return std.mem.endsWith(u8, path, ".png");
}



const LibraryOutput = struct {
    arm9: *std.Build.Step.Compile,
    arm7: *std.Build.Step.Compile,
    arm9_module: *std.Build.Module,
    arm7_module: *std.Build.Module,
};
const CreateOptions = struct {
    nds9_target: std.Build.ResolvedTarget,
    nds7_target: std.Build.ResolvedTarget,
    optimize: std.builtin.OptimizeMode,
    make_libc_file: *std.Build.Step.Run,
};
fn createArm7Arm9(b: *std.Build, comptime name: [:0]const u8, options: CreateOptions) LibraryOutput {
    const arm9 = b.addStaticLibrary(.{
        .name = name ++ "9",
        .target = options.nds9_target,
        .link_libc = true,
        .optimize = options.optimize,

        // Optimization option
        .omit_frame_pointer = true,
    });

    const arm7 = b.addStaticLibrary(.{
        .name = name ++ "7",
        .target = options.nds7_target,
        .link_libc = true,
        .optimize = options.optimize,

        // Optimization option
        .omit_frame_pointer = true,
    });

    arm9.setLibCFile(options.make_libc_file.captureStdOut());
    arm7.setLibCFile(options.make_libc_file.captureStdOut());

    arm9.step.dependOn(&options.make_libc_file.step);
    arm7.step.dependOn(&options.make_libc_file.step);

    arm9.root_module.addCMacro("__NDS__", "");
    arm7.root_module.addCMacro("__NDS__", "");

    arm9.root_module.addCMacro("ARM9", "");
    arm7.root_module.addCMacro("ARM7", "");
    if (options.optimize != .Debug) {
        arm9.root_module.addCMacro("NDEBUG", "");
        arm7.root_module.addCMacro("NDEBUG", "");
    }

    const arm9_module = b.addModule(name ++ "9", .{});
    const arm7_module = b.addModule(name ++ "7", .{});

    arm9_module.linkLibrary(arm9);
    arm7_module.linkLibrary(arm7);

    b.installArtifact(arm9);
    b.installArtifact(arm7);

    return .{
        .arm9 = arm9,
        .arm7 = arm7,
        .arm9_module = arm9_module,
        .arm7_module = arm7_module,
    };
}



fn buildDefaultArm7(b: *std.Build, options: DefaultArm7Options) *std.Build.Step.Compile {
    const libnds_dep = b.dependency("libnds", .{});
    const dswifi_dep = b.dependency("dswifi", .{});
    const maxmod_dep = b.dependency("maxmod", .{});
    const blocksds_tree = b.dependency("blocksds-tree", .{});

    const optimize = (
        if (options.optimize != .Debug) options.optimize
        else .ReleaseSafe
    );

//     const default_arm7 = b.addObject(.{
    const default_arm7 = b.addExecutable(.{
        .name = "default_arm7",
        .target = options.nds7_target,
        .link_libc = true,
        .optimize = optimize,

        // Optimization option
        .omit_frame_pointer = true,
    });
    default_arm7.link_gc_sections = true;

    default_arm7.setLinkerScript(b.path("util/arm7-link-example.ld"));
    default_arm7.root_module.addCMacro("ARM7", "");

    default_arm7.setLibCFile(options.make_libc_file.captureStdOut());
    default_arm7.step.dependOn(&options.make_libc_file.step);
    default_arm7.addLibraryPath(options.compile_libc_arm7.getEmittedBin().dirname());
//     default_arm7.addObjectFile(options.compile_libc_arm7.getEmittedBin());
    default_arm7.step.dependOn(&options.compile_libc_arm7.step);
//     default_arm7.addLibraryPath(.{ .cwd_relative = "/opt/wonderful/toolchain/gcc-arm-none-eabi/arm-none-eabi/lib/arm7tdmi" });
//     default_arm7.addObjectFile(.{ .cwd_relative = "/opt/wonderful/toolchain/gcc-arm-none-eabi/arm-none-eabi/lib/arm7tdmi/libc.a" });
//     default_arm7.addObjectFile(.{ .cwd_relative = "/opt/wonderful/toolchain/gcc-arm-none-eabi/arm-none-eabi/lib/arm7tdmi/libm.a" });
//     default_arm7.addObjectFile(.{ .cwd_relative = "/opt/blocksds/core/sys/crts/ds_arm7_crt0.o" });
//     default_arm7.addObjectFile();
//     default_arm7.addIncludePath(.{ .cwd_relative = "/opt/wonderful/toolchain/gcc-arm-none-eabi/arm-none-eabi/include" });

    default_arm7.addCSourceFile(.{
        .file = blocksds_tree.path("sys/default_arm7/source/main.c"),
        .flags = &default_c_flags,
        .language = .c,
    });

    default_arm7.addIncludePath(libnds_dep.path("include"));
    default_arm7.addIncludePath(dswifi_dep.path("include"));
    default_arm7.addIncludePath(maxmod_dep.path("include"));


    default_arm7.linkLibrary(options.libnds7);
    default_arm7.linkLibrary(options.dswifi7);
//     default_arm7.linkLibrary(options.maxmod7);

    b.installArtifact(default_arm7);
//     b.default_step.dependOn(&b.addInstallBinFile(default_arm7.getEmittedBin(), "default_arm7.o").step);



    return default_arm7;
}

const AddSourceFilesOptions = struct {
    builder: *std.Build,
    sub_paths: []const []const u8,
    compile: *std.Build.Step.Compile,
    languages: []const struct {
        type: std.Build.Module.ForeignSourceLanguage,
        flags: []const []const u8,
    },
};
fn extensionIs(comptime ext: []const u8) fn(path: []const u8) bool {
    return struct {
        fn inner(path: []const u8) bool {
            return std.mem.endsWith(u8, path, "." ++ ext);
        }
    }.inner;
}
fn addSourceFiles(options: AddSourceFilesOptions) void {
    for (options.sub_paths) |sub_path| {
        for (options.languages) |lang| {
            const find = find_build_sources.find;

            const sources = switch (lang.type) {
                .c => find(options.builder, sub_path, extensionIs("c")),
                .assembly_with_cpp, .assembly => find(options.builder, sub_path, extensionIs("s")),
                .cpp => find(options.builder, sub_path, extensionIs("cpp")),
                else => {
                    @panic("language not c/cpp/assembly/assembly_with_cpp");
                }
            } catch @panic("failed to enumerate source files");
            defer sources.deinit();

            options.compile.addCSourceFiles(.{
                .root = sources.directory,
                .files = sources.inner,
                .flags = lang.flags,
                .language = lang.type,
            });
        }
    }
}


fn buildLibnds(b: *std.Build, options: LibOptions) LibraryOutput {
    const fatfs_dep = b.dependency("wf-fatfs", .{});
    const libnds_dep = b.dependency("libnds", .{});

    const extra_libnds_flags = (
        if (options.optimize == .Debug) .{ "-fstack-protector-strong" }
        else .{ "" }
    );

    const libnds = createArm7Arm9(b, "nds", .{
        .nds7_target = options.nds7_target,
        .nds9_target = options.nds9_target,
        .optimize = options.optimize,
        .make_libc_file = options.make_libc_file,
    });
    libnds.arm9.root_module.root_source_file = b.path("src/arm9.zig");
    libnds.arm7.root_module.root_source_file = b.path("src/arm7.zig");

    addSourceFiles(.{
        .compile = libnds.arm9,
        .builder = libnds_dep.builder,
        .sub_paths = &.{ "source/arm9", "source/common" },
        .languages = &.{
            .{
                .type = .c,
                .flags = &(default_c_flags ++ libnds_flags ++ extra_libnds_flags),
            },
            .{
                .type = .assembly_with_cpp,
                .flags = &(default_asm_flags),
            },
        },
    });
    addSourceFiles(.{
        .compile = libnds.arm9,
        .builder = fatfs_dep.builder,
        .sub_paths = &.{ "source" },
        .languages = &.{
            .{
                .type = .c,
                .flags = &(default_c_flags ++ libnds_flags ++ extra_libnds_flags),
            },
        },
    });


    addSourceFiles(.{
        .compile = libnds.arm7,
        .builder = libnds_dep.builder,
        .sub_paths = &.{ "source/arm7", "source/common" },
        .languages = &.{
            .{
                .type = .c,
                .flags = &(default_c_flags ++ libnds_flags ++ extra_libnds_flags),
            },
            .{
                .type = .assembly_with_cpp,
                .flags = &(default_asm_flags),
            },
        },
    });

    libnds.arm9.addIncludePath(fatfs_dep.path("source"));
    libnds.arm9.addIncludePath(libnds_dep.path("include"));
    libnds.arm9.addIncludePath(libnds_dep.path("source"));
    libnds.arm9.addIncludePath(libnds_dep.path("source/common/ndsabi"));
    libnds.arm9.addIncludePath(libnds_dep.path("source/arm9/libc/fatfs"));

    libnds.arm7.addIncludePath(libnds_dep.path("include"));
    libnds.arm7.addIncludePath(libnds_dep.path("source"));
    libnds.arm7.addIncludePath(libnds_dep.path("source/common/ndsabi"));

    return libnds;
}



fn buildDswifi(b: *std.Build, options: LibOptions) LibraryOutput {
    const dswifi_dep = b.dependency("dswifi", .{});
    const libnds_dep = b.dependency("libnds", .{});

    const dswifi = createArm7Arm9(b, "dswifi", .{
        .nds7_target = options.nds7_target,
        .nds9_target = options.nds9_target,
        .optimize = options.optimize,
        .make_libc_file = options.make_libc_file,
    });
    if (options.optimize == .Debug) {
        dswifi.arm9.root_module.addCMacro("SGIP_DEBUG", "");
        dswifi.arm7.root_module.addCMacro("SGIP_DEBUG", "");
    }


    addSourceFiles(.{
        .compile = dswifi.arm9,
        .builder = dswifi_dep.builder,
        .sub_paths = &.{ "source/arm9", "source/common" },
        .languages = &.{
            .{
                .type = .c,
                .flags = &default_c_flags,
            },
            .{
                .type = .assembly_with_cpp,
                .flags = &default_asm_flags,
            },
        },
    });
    addSourceFiles(.{
        .compile = dswifi.arm7,
        .builder = dswifi_dep.builder,
        .sub_paths = &.{ "source/arm7", "source/common" },
        .languages = &.{
            .{
                .type = .c,
                .flags = &default_c_flags,
            },
            .{
                .type = .assembly_with_cpp,
                .flags = &default_asm_flags,
            },
        },
    });

    dswifi.arm9.addIncludePath(libnds_dep.path("include"));
    dswifi.arm9.addIncludePath(dswifi_dep.path("include"));
    dswifi.arm9.addIncludePath(dswifi_dep.path("source/common"));

    dswifi.arm7.addIncludePath(libnds_dep.path("include"));
    dswifi.arm7.addIncludePath(dswifi_dep.path("include"));
    dswifi.arm7.addIncludePath(dswifi_dep.path("source/common"));

    return dswifi;
}



fn buildMaxmod(b: *std.Build, options: LibOptions) LibraryOutput {
    const maxmod_dep = b.dependency("maxmod", .{});

    const maxmod = createArm7Arm9(b, "maxmod", .{
        .nds7_target = options.nds7_target,
        .nds9_target = options.nds9_target,
        .optimize = options.optimize,
        .make_libc_file = options.make_libc_file,
    });
    maxmod.arm9.root_module.addCMacro("SYS_NDS", "");
    maxmod.arm7.root_module.addCMacro("SYS_NDS", "");

    maxmod.arm9.root_module.addCMacro("SYS_NDS9", "");
    maxmod.arm7.root_module.addCMacro("SYS_NDS7", "");

    addSourceFiles(.{
        .compile = maxmod.arm9,
        .builder = maxmod_dep.builder,
        .sub_paths = &.{ "source/arm9", "source/common" },
        .languages = &.{
            .{
                .type = .assembly_with_cpp,
                .flags = &default_asm_flags,
            },
        },
    });
    addSourceFiles(.{
        .compile = maxmod.arm7,
        .builder = maxmod_dep.builder,
        .sub_paths = &.{ "source/arm7", "source/common" },
        .languages = &.{
            .{
                .type = .assembly_with_cpp,
                .flags = &default_asm_flags,
            },
        },
    });

    maxmod.arm9.addIncludePath(maxmod_dep.path("asm_include"));
    maxmod.arm7.addIncludePath(maxmod_dep.path("asm_include"));

    return maxmod;
}



fn buildCrts(b: *std.Build, options: CrtOptions) *std.Build.Step.WriteFile {
    const blocksds_tree = b.dependency("blocksds-tree", .{});

    const crt_directory = b.addWriteFiles();


    // arm7 VRAM and IWRAM use the same object file, and the same assembly file as arm7_crt0
    const arm7_vram_crt0 = b.addObject(.{
        .name = "ds_arm7_vram_iwram_crt0",
        .target = options.nds7_target,
        .optimize = options.optimize,
        .omit_frame_pointer = true,
    });
    // compile arm7_crt0 as VRAM/IWRAM
    arm7_vram_crt0.root_module.addCMacro("VRAM", "");

    arm7_vram_crt0.root_module.addCMacro("__NDS__", "");
    arm7_vram_crt0.root_module.addCMacro("ARM7", "");
    if (options.optimize != .Debug) {
        arm7_vram_crt0.root_module.addCMacro("NDEBUG", "");
    }
    arm7_vram_crt0.addCSourceFile(.{
        .file = blocksds_tree.path("sys/crts/ds_arm7_crt0.s"),
        .flags = &.{},
        .language = .assembly_with_cpp,
    });
    _ = crt_directory.addCopyFile(arm7_vram_crt0.getEmittedBin(), "ds_arm7_vram_crt0.o");
    _ = crt_directory.addCopyFile(arm7_vram_crt0.getEmittedBin(), "ds_arm7_iwram_crt0.o");



    const arm7_crt0 = b.addObject(.{
        .name = "ds_arm7_crt0",
        .target = options.nds7_target,
        .optimize = options.optimize,
        .omit_frame_pointer = true,
    });
    arm7_crt0.root_module.addCMacro("__NDS__", "");
    arm7_crt0.root_module.addCMacro("ARM7", "");
    if (options.optimize != .Debug) {
        arm7_crt0.root_module.addCMacro("NDEBUG", "");
    }
    arm7_crt0.addCSourceFile(.{
        .file = blocksds_tree.path("sys/crts/ds_arm7_crt0.s"),
        .flags = &.{},
        .language = .assembly_with_cpp,
    });
    _ = crt_directory.addCopyFile(arm7_crt0.getEmittedBin(), "ds_arm7_crt0.o");



    const arm9_crt0 = b.addObject(.{
        .name = "ds_arm9_crt0",
        .target = options.nds9_target,
        .optimize = options.optimize,
        .omit_frame_pointer = true,
    });
    arm9_crt0.root_module.addCMacro("__NDS__", "");
    arm9_crt0.root_module.addCMacro("ARM9", "");
    if (options.optimize != .Debug) {
        arm9_crt0.root_module.addCMacro("NDEBUG", "");
    }
    arm9_crt0.addCSourceFile(.{
        .file = blocksds_tree.path("sys/crts/ds_arm9_crt0.s"),
        .flags = &.{},
        .language = .assembly_with_cpp,
    });
    _ = crt_directory.addCopyFile(arm9_crt0.getEmittedBin(), "ds_arm9_crt0.o");

    b.installDirectory(.{
        .install_dir = .{ .custom = "crt" },
        .install_subdir = "",
        .source_dir = crt_directory.getDirectory(),
    });

    return crt_directory;
}



fn buildGrit(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const grit_c = b.dependency("grit", .{});
    const exe = b.addExecutable(.{
        .name = "grit",
        .target = options.target,
        .link_libc = true,
        .optimize = options.optimize,
    });
    exe.root_module.addCMacro("PACKAGE_VERSION", "\"0.9.2\"");


    const libplum = b.addObject(.{
        .name = "plum",
        .target = options.target,
        .link_libc = true,
        .optimize = options.optimize,
    });
    // TODO: remove this; only exists for LLVM 18 compatibility
    libplum.root_module.addCMacro("alignas", "_Alignas");

    if (options.target.result.os.tag == .windows) {
        // statically make sure aligned_alloc has no reason to be executed by libplum, as it does not exist on windows
        const assertion = "_Static_assert(alignof(jmp_buf) <= alignof(max_align_t), \"jmp_buf cannot be aligned\")";
        libplum.root_module.addCMacro(
            "aligned_alloc(alignment, size)",
            "({" ++ assertion ++ "; abort(); (void*)0; })"
        );
    }
    libplum.addCSourceFile(.{
        .file = grit_c.path("libplum/libplum.c"),
        .flags = &default_c_flags,
        .language = .c,
    });
    exe.addObjectFile(libplum.getEmittedBin());

    addSourceFiles(.{
        .compile = exe,
        .builder = grit_c.builder,
        .sub_paths = &.{ "." },
        .languages = &.{
            .{
                .type = .cpp,
                .flags = &default_cpp_flags,
            },
        },
    });

    const include = .{"cldib", "extlib", "libgrit", "libplum", "srcgrit"};
    inline for (include) |path| {
        exe.addIncludePath(grit_c.path(path));
    }
    exe.linkLibCpp();

    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn buildNdstool(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const ndstool_c = b.dependency("ndstool", .{});

    const exe = b.addExecutable(.{
        .name = "ndstool",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    exe.root_module.addCMacro("PACKAGE_VERSION", "\"2.3.0\"");
    exe.root_module.addCMacro("WINICONV_CONST", ""); // for windows iconv


    addSourceFiles(.{
        .compile = exe,
        .builder = ndstool_c.builder,
        .sub_paths = &.{ "source" },
        .languages = &.{
            .{
                .type = .c,
                .flags = &default_c_flags,
            },
            .{
                .type = .cpp,
                .flags = &default_cpp_flags,
            },
        },
    });


    // iconv doesn't exist on Windows, provide an alternative implementation
    if (options.target.result.os.tag == .windows) {
        if (b.lazyDependency("win-iconv", .{})) |win_iconv_c| {
            exe.addCSourceFile(.{
                .file = win_iconv_c.path("win_iconv.c"),
                .flags = &default_c_flags,
                .language = .c,
            });
            exe.addIncludePath(win_iconv_c.path(""));
        }
    }



    // iconv is not properly linked on macOS, provide a stub for ndstool
    const stub_options = .{
        .name = "ndstool-macos-stub",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
        .root_source_file = b.path("util/iconv-macos-stub.zig"),
    };
    const test_stub = b.addRunArtifact(b.addTest(stub_options));
    options.test_step.dependOn(&test_stub.step);

    if (options.target.result.os.tag == .macos) {
        const ndstool_stub = b.addObject(stub_options);
        exe.addObjectFile(ndstool_stub.getEmittedBin());
    }



    exe.addIncludePath(ndstool_c.path("source"));
    exe.linkLibCpp();
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn buildBin2c(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const blocksds_tree = b.dependency("blocksds-tree", .{});

    const exe = b.addExecutable(.{
        .name = "bin2c",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    exe.addCSourceFile(.{
        .file = blocksds_tree.path("tools/bin2c/bin2c.c"),
        .flags = &default_c_flags,
        .language = .c,
    });
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn buildDldipatch(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const dldipatch_c = b.dependency("dldipatch", .{});
    const exe = b.addExecutable(.{
        .name = "dldipatch",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    exe.addCSourceFile(.{
        .file = dldipatch_c.path("dldipatch.c"),
        .flags = &default_c_flags,
        .language = .c,
    });
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn buildDlditool(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const blocksds_tree = b.dependency("blocksds-tree", .{});
    const exe = b.addExecutable(.{
        .name = "dlditool",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    exe.addCSourceFile(.{
        .file = blocksds_tree.path("tools/dlditool/dlditool.c"),
        .flags = &default_c_flags,
        .language = .c,
    });
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn buildMkfatimg(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const blocksds_tree = b.dependency("blocksds-tree", .{});
    const exe = b.addExecutable(.{
        .name = "mkfatimg",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });

    addSourceFiles(.{
        .compile = exe,
        .builder = blocksds_tree.builder,
        .sub_paths = &.{ "tools/mkfatimg/source" },
        .languages = &.{
            .{
                .type = .c,
                .flags = &default_c_flags,
            },
        },
    });

    exe.addIncludePath(blocksds_tree.path("tools/mkfatimg/source"));
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn buildMmutil(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const mmutil_c = b.dependency("mmutil", .{});
    const exe = b.addExecutable(.{
        .name = "mmutil",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    exe.root_module.addCMacro("PACKAGE_VERSION", "\"1.10.1\"");

    addSourceFiles(.{
        .compile = exe,
        .builder = mmutil_c.builder,
        .sub_paths = &.{ "source" },
        .languages = &.{
            .{
                .type = .c,
                .flags = &default_c_flags,
            },
        },
    });

    exe.addIncludePath(mmutil_c.path("source"));
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn buildSqueezerw(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const squeezer_c = b.dependency("squeezer", .{});
    const exe = b.addExecutable(.{
        .name = "squeezerw",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    addSourceFiles(.{
        .compile = exe,
        .builder = squeezer_c.builder,
        .sub_paths = &.{ "src" },
        .languages = &.{
            .{
                .type = .c,
                .flags = &default_c_flags,
            },
        },
    });

    exe.addIncludePath(squeezer_c.path("src"));
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn buildTeaktool(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const blocksds_tree = b.dependency("blocksds-tree", .{});
    const exe = b.addExecutable(.{
        .name = "teaktool",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    exe.root_module.addCMacro("PACKAGE_VERSION", "\"1.0.0\"");

    exe.addCSourceFiles(.{
        .root = blocksds_tree.path("tools/teaktool/source"),
        .files = &.{
            "elf.c", "main.c",
        },
        .flags = &default_c_flags,
        .language = .c,
    });
    exe.addIncludePath(blocksds_tree.path("tools/teaktool/source"));
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}
