const std = @import("std");
const builtin = @import("builtin");

const source_files = @import("source-files.zig");

const libnds_flags = .{
    "-Wno-pedantic",
    "-Wshadow",
    "-DPATH_MAX=1024", // HACK: this should not be needed, limits.h is somehow not included properly by Zig/LLVM
};
const default_warn_flags = .{
    "-Wall", "-Wextra", "-Wpedantic", "-Wstrict-prototypes"
};
const default_c_flags = default_warn_flags ++ .{ "-std=gnu23" };
const default_cpp_flags = default_warn_flags ++ .{ "-std=gnu++17" };

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
    const grit = build_grit(b, tool_options);
    _ = build_ndstool(b, tool_options);
    _ = build_bin2c(b, tool_options);
    _ = build_dldipatch(b, tool_options);
    _ = build_dlditool(b, tool_options);
    _ = build_mkfatimg(b, tool_options);
    _ = build_mmutil(b, tool_options);
    _ = build_squeezerw(b, tool_options);
    _ = build_teaktool(b, tool_options);



    const nds9_target = b.resolveTargetQuery(.{
        // nice resource: https://wiki.debian.org/ArmEabiPort#Thumb_interworking_suggests_armv4t
        // TODO: check if thumb interworking must be enabled
        // debian.org suggests it is required by .eabi
        .cpu_arch = .thumb,
        .os_tag = .freestanding,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.arm946e_s },
        .abi = .eabi,
    });
    const nds7_target = b.resolveTargetQuery(.{
        .cpu_arch = .thumb,
        .os_tag = .freestanding,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.arm7tdmi },
        .abi = .eabi,
    });



    const lib_options = .{
        .nds9_target = nds9_target,
        .nds7_target = nds7_target,
        .optimize = optimize,
    };
    const libnds = build_libnds(b, lib_options);
    _ = build_dswifi(b, lib_options);
    _ = build_maxmod(b, lib_options);



    const libnds_dep = b.dependency("libnds", .{});
    const grit_images = .{
        .{ .dir = "source/arm9/gfx", .name = "keyboardGfx", },
        .{ .dir = "source/arm9/gfx", .name = "default_font", },
    };
    const wf = b.addWriteFiles();
    libnds.arm9.addIncludePath(wf.getDirectory());

    inline for (grit_images) |image| {
        const image_path = libnds_dep.path(image.dir ++ "/" ++ image.name ++ ".png");
        const convert = b.addRunArtifact(grit);

        convert.setCwd(wf.getDirectory());

        convert.addFileArg(image_path);
        convert.addArg("-ftc"); // output file type C
        convert.addArg("-W1"); // -W1 for error messages, -W2 for error + warnings
        convert.addArg("-o");
        convert.addArg(image.name);

        libnds.arm9.addCSourceFile(.{
            .file = wf.getDirectory().path(b, image.name ++ ".c"),
            .flags = &(default_c_flags),
        });
        libnds.arm9.step.dependOn(&convert.step);
    }


    b.default_step.dependOn(tools_step);
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
};
fn create_arm7_arm9(b: *std.Build, comptime name: [:0]const u8, options: CreateOptions) LibraryOutput {
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

    // TODO: remove dependency on external toolchain
    arm9.setLibCFile(b.path("libc.txt"));
    arm7.setLibCFile(b.path("libc.txt"));

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



fn build_libnds(b: *std.Build, options: LibOptions) LibraryOutput {
    const fatfs_dep = b.dependency("wf-fatfs", .{});
    const libnds_dep = b.dependency("libnds", .{});

    const extra_libnds_flags = (
        if (options.optimize == .Debug) .{ "-fstack-protector-strong" }
        else .{ "" }
    );

    const libnds = create_arm7_arm9(b, "nds", .{
        .nds7_target = options.nds7_target,
        .nds9_target = options.nds9_target,
        .optimize = options.optimize,
    });
    libnds.arm9.root_module.root_source_file = b.path("src/arm9.zig");
    libnds.arm7.root_module.root_source_file = b.path("src/arm7.zig");

    libnds.arm9.addIncludePath(fatfs_dep.path("source"));
    libnds.arm9.addCSourceFiles(.{
        .root = fatfs_dep.path("source"),
        .files = &source_files.fatfs_c,
    });

    libnds.arm9.addIncludePath(libnds_dep.path("include"));
    libnds.arm9.addIncludePath(libnds_dep.path("source"));
    libnds.arm9.addIncludePath(libnds_dep.path("source/common/ndsabi"));
    libnds.arm9.addIncludePath(libnds_dep.path("source/arm9/libc/fatfs"));

    libnds.arm9.addCSourceFiles(.{
        .root = libnds_dep.path("source"),
        .files = &(source_files.libnds_arm9_c ++ source_files.libnds_common_c),
        .flags = &(default_c_flags ++ libnds_flags ++ extra_libnds_flags),
    });
    libnds.arm9.addCSourceFiles(.{
        .root = libnds_dep.path("source"),
        .files = &(source_files.libnds_arm9_asm ++ source_files.libnds_common_asm),
        .flags = &(default_c_flags ++ libnds_flags ++ extra_libnds_flags),
    });



    libnds.arm7.addIncludePath(libnds_dep.path("include"));
    libnds.arm7.addIncludePath(libnds_dep.path("source"));
    libnds.arm7.addIncludePath(libnds_dep.path("source/common/ndsabi"));

    libnds.arm7.addCSourceFiles(.{
        .root = libnds_dep.path("source"),
        .files = &(source_files.libnds_arm7_c ++ source_files.libnds_common_c),
        .flags = &(default_c_flags ++ libnds_flags ++ extra_libnds_flags),
    });
    libnds.arm7.addCSourceFiles(.{
        .root = libnds_dep.path("source"),
        .files = &(source_files.libnds_arm7_asm ++ source_files.libnds_common_asm),
        .flags = &(default_c_flags ++ libnds_flags ++ extra_libnds_flags),
    });

    return libnds;
}



fn build_dswifi(b: *std.Build, options: LibOptions) LibraryOutput {
    const dswifi_dep = b.dependency("dswifi", .{});
    const libnds_dep = b.dependency("libnds", .{});

    const dswifi = create_arm7_arm9(b, "dswifi", .{
        .nds7_target = options.nds7_target,
        .nds9_target = options.nds9_target,
        .optimize = options.optimize,
    });
    if (options.optimize == .Debug) {
        dswifi.arm9.root_module.addCMacro("SGIP_DEBUG", "");
        dswifi.arm7.root_module.addCMacro("SGIP_DEBUG", "");
    }


    dswifi.arm9.addCSourceFiles(.{
        .root = dswifi_dep.path("source"),
        .files = &(source_files.dswifi_arm9_c ++ source_files.dswifi_common_asm),
        .flags = &(default_c_flags),
    });
    dswifi.arm7.addCSourceFiles(.{
        .root = dswifi_dep.path("source"),
        .files = &(source_files.dswifi_arm7_c ++ source_files.dswifi_common_asm),
        .flags = &(default_c_flags),
    });
    dswifi.arm9.addIncludePath(libnds_dep.path("include"));
    dswifi.arm9.addIncludePath(dswifi_dep.path("include"));
    dswifi.arm9.addIncludePath(dswifi_dep.path("source/common"));

    dswifi.arm7.addIncludePath(libnds_dep.path("include"));
    dswifi.arm7.addIncludePath(dswifi_dep.path("include"));
    dswifi.arm7.addIncludePath(dswifi_dep.path("source/common"));

    return dswifi;
}



fn build_maxmod(b: *std.Build, options: LibOptions) LibraryOutput {
    const maxmod_dep = b.dependency("maxmod", .{});

    const maxmod = create_arm7_arm9(b, "maxmod", .{
        .nds7_target = options.nds7_target,
        .nds9_target = options.nds9_target,
        .optimize = options.optimize,
    });
    maxmod.arm9.root_module.addCMacro("SYS_NDS", "");
    maxmod.arm7.root_module.addCMacro("SYS_NDS", "");

    maxmod.arm9.root_module.addCMacro("SYS_NDS9", "");
    maxmod.arm7.root_module.addCMacro("SYS_NDS7", "");


    maxmod.arm9.addCSourceFiles(.{
        .root = maxmod_dep.path(""),
        .files = &(source_files.maxmod_arm9_asm ++ source_files.maxmod_common_asm),
        .flags = &(default_c_flags),
    });
    maxmod.arm7.addCSourceFiles(.{
        .root = maxmod_dep.path(""),
        .files = &(source_files.maxmod_arm7_asm ++ source_files.maxmod_common_asm),
        .flags = &(default_c_flags),
    });
    maxmod.arm9.addIncludePath(maxmod_dep.path("asm_include"));
    maxmod.arm7.addIncludePath(maxmod_dep.path("asm_include"));

    return maxmod;
}



fn build_crts(b: *std.Build, options: LibOptions) void {
    const blocksds_tree = b.dependency("blocksds-tree", .{});

    // vram and iwram use the same crt
    const arm7_vram_crt0 = b.addObject(.{
        .name = "ds_arm7_vram_crt0",
        .target = options.nds7_target,
        .optimize = options.optimize,
        .omit_frame_pointer = true,
    });
    arm7_vram_crt0.root_module.addCMacro("VRAM", "");
    arm7_vram_crt0.root_module.addCMacro("__NDS__", "");
    arm7_vram_crt0.root_module.addCMacro("ARM7", "");
    if (options.optimize != .Debug) {
        arm7_vram_crt0.root_module.addCMacro("NDEBUG", "");
    }
    arm7_vram_crt0.addCSourceFile(.{
        .file = blocksds_tree.path("ds_arm7_crt0.s"),
        .flags = &.{},
    });
//     b.installArtifact(arm7_vram_crt0);



    const arm7_crt0 = b.addObject(.{
        .name = "ds_arm7_vram_crt0",
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
        .file = blocksds_tree.path("ds_arm7_crt0.s"),
        .flags = &.{},
    });
//     b.installArtifact(arm7_crt0);



    const arm9_crt0 = b.addObject(.{
        .name = "ds_arm7_vram_crt0",
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
        .file = blocksds_tree.path("ds_arm9_crt0.s"),
        .flags = &.{},
    });
//     b.installArtifact(arm9_crt0);
}



fn build_grit(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
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
        .flags = &.{
            "-std=gnu17", // TODO: doesn't compile with gnu23
            "-Wall",
            "-Wno-dangling-else", "-Wno-parentheses", "-Wno-misleading-indentation", "-Wno-unused-result", "-Wno-comment", "-Wno-unused-variable", "-Wno-sign-compare", "-Wno-unused-value", "-Wno-unused-but-set-variable",
            // Clang-specific
            "-Wno-tautological-compare",
//             GCC: "-Wno-class-memaccess", "-Wno-maybe-uninitialized", "-Wno-format-truncation"
        },
    });
    exe.addObjectFile(libplum.getEmittedBin());

    exe.addCSourceFiles(.{
        .root = grit_c.path(""),
        .files = &source_files.grit_cpp,
        .flags = &default_cpp_flags,
    });
    const include = .{"cldib", "extlib", "libgrit", "libplum", "srcgrit"};
    inline for (include) |path| {
        exe.addIncludePath(grit_c.path(path));
    }
    exe.linkLibCpp();

    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn build_ndstool(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const ndstool_c = b.dependency("ndstool", .{});

    const exe = b.addExecutable(.{
        .name = "ndstool",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    exe.root_module.addCMacro("PACKAGE_VERSION", "\"2.3.0\"");
    exe.root_module.addCMacro("WINICONV_CONST", ""); // for windows iconv


    exe.addCSourceFiles(.{
        .root = ndstool_c.path("source"),
        .files = &source_files.ndstool_c,
        .flags = &default_c_flags,
    });
    exe.addCSourceFiles(.{
        .root = ndstool_c.path("source"),
        .files = &source_files.ndstool_cpp,
        .flags = &(default_cpp_flags ++ .{
            "-Wno-unused-result",
            // GCC: "-Wno-class-memaccess", "-Wno-stringop-truncation"
        }),
    });



    // iconv doesn't exist on Windows, provide an alternative implementation
    if (options.target.result.os.tag == .windows) {
        if (b.lazyDependency("win-iconv", .{})) |win_iconv_c| {
            exe.addCSourceFile(.{
                .file = win_iconv_c.path("win_iconv.c"),
                .flags = &default_c_flags,
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
        .root_source_file = b.path("iconv-macos-stub.zig"),
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



fn build_bin2c(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
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
    });
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn build_dldipatch(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
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
    });
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn build_dlditool(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const blocksds_tree = b.dependency("blocksds-tree", .{});
    const exe = b.addExecutable(.{
        .name = "dlditool",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    exe.addCSourceFile(.{
        .file = blocksds_tree.path("tools/dlditool/dlditool.c"),
        .flags = &(default_warn_flags ++ .{ "-std=gnu17" }), // TODO: doesn't compile with gnu23
    });
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn build_mkfatimg(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const blocksds_tree = b.dependency("blocksds-tree", .{});
    const exe = b.addExecutable(.{
        .name = "mkfatimg",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    exe.addCSourceFiles(.{
        .root = blocksds_tree.path("tools/mkfatimg/source"),
        .files = &.{
            "diskio.c", "ff.c", "ffsystem.c", "ffunicode.c", "main.c",
        },
        .flags = &default_c_flags,
    });
    exe.addIncludePath(blocksds_tree.path("tools/mkfatimg/source"));
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn build_mmutil(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const mmutil_c = b.dependency("mmutil", .{});
    const exe = b.addExecutable(.{
        .name = "mmutil",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    exe.root_module.addCMacro("PACKAGE_VERSION", "\"1.10.1\"");
    exe.addCSourceFiles(.{
        .root = mmutil_c.path("source"),
        .files = &source_files.mmutil_c,
        .flags = &(default_warn_flags ++ .{ "-std=gnu17" }), // TODO: doesn't compile with gnu23
    });
    exe.addIncludePath(mmutil_c.path("source"));
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn build_squeezerw(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
    const squeezer_c = b.dependency("squeezer", .{});
    const exe = b.addExecutable(.{
        .name = "squeezerw",
        .target = options.target,
        .optimize = options.optimize,
        .link_libc = true,
    });
    exe.addCSourceFiles(.{
        .root = squeezer_c.path("src"),
        .files = &source_files.squeezer_c,
        .flags = &(default_c_flags ++ .{
            "-Wno-sign-compare", "-Wno-unused-parameter", "-Wno-unused-function",
        }),
    });
    exe.addIncludePath(squeezer_c.path("src"));
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}



fn build_teaktool(b: *std.Build, options: ToolOptions) *std.Build.Step.Compile {
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
    });
    exe.addIncludePath(blocksds_tree.path("tools/teaktool/source"));
    options.build_step.dependOn(&b.addInstallArtifact(exe, .{}).step);
    return exe;
}