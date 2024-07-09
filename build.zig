const std = @import("std");
const builtin = @import("builtin");


const libnds_flags = .{
    "-std=gnu23",
    "-Wall", "-Wextra",
    //"-Wpedantic",
    "-Wstrict-prototypes", "-Wshadow",
//     "-nostdinc", // no standard include paths
    "-DPATH_MAX=1024", // HACK: this should not be needed, limits.h is somehow not included properly by Zig/LLVM
//     "-nostdinc++",
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

    const extra_libnds_flags = (
        if (optimize == .Debug) .{ "-fstack-protector-strong" }
        else .{ "" }
    );


    const fatfs_c = b.dependency("wf-fatfs", .{});
    const libnds_c = b.dependency("libnds", .{});


    const nds9 = b.addStaticLibrary(.{
        .name = "nds9",
        .target = nds9_target,
        .link_libc = true,
        .optimize = optimize,

        // Optimization option
        .omit_frame_pointer = true,
        .root_source_file = b.path("src/arm9.zig"),
    });

    nds9.root_module.addCMacro("__NDS__", "");
    nds9.root_module.addCMacro("ARM9", "");
    if (optimize != .Debug) {
        nds9.root_module.addCMacro("NDEBUG", "");
    }

    // TODO: remove dependency on external toolchain
    nds9.setLibCFile(b.path("libc.txt"));


    nds9.addIncludePath(fatfs_c.path("source"));
    nds9.addCSourceFiles(.{
        .root = fatfs_c.path("source"),
        .files = &fatfs_files,
    });

    nds9.addIncludePath(libnds_c.path("include"));
    nds9.addIncludePath(libnds_c.path("source"));
    nds9.addIncludePath(libnds_c.path("source/common/ndsabi"));
    nds9.addIncludePath(libnds_c.path("source/arm9/libc/fatfs"));

    nds9.addCSourceFiles(.{
        .root = libnds_c.path("source"),
        .files = &(
            libnds_arm9_files ++ libnds_common_files
            ++ libnds_arm9_asm ++ libnds_common_asm
        ),
        .flags = &(libnds_flags ++ extra_libnds_flags),
    });

    b.installArtifact(nds9);

    const nds9_module = b.addModule("nds9", .{
        .root_source_file = b.path("src/arm9.zig"),
    });
    nds9_module.linkLibrary(nds9);



    const nds7 = b.addStaticLibrary(.{
        .name = "nds7",
        .target = nds7_target,
        .link_libc = true,
        .optimize = optimize,

        .omit_frame_pointer = true,
        .root_source_file = b.path("src/arm7.zig"),
    });
    nds7.root_module.addCMacro("__NDS__", "");
    nds7.root_module.addCMacro("ARM7", "");
    if (optimize != .Debug) {
        nds9.root_module.addCMacro("NDEBUG", "");
    }

    // TODO: remove dependency on external toolchain
    nds7.setLibCFile(b.path("libc.txt"));

    nds7.addIncludePath(libnds_c.path("include"));
    nds7.addIncludePath(libnds_c.path("source"));
    nds7.addIncludePath(libnds_c.path("source/common/ndsabi"));

    nds7.addCSourceFiles(.{
        .root = libnds_c.path("source"),
        .files = &(
            libnds_arm7_files ++ libnds_common_files
            ++ libnds_arm7_asm ++ libnds_common_asm
        ),
        .flags = &(libnds_flags ++ extra_libnds_flags),
    });
    b.installArtifact(nds7);



    const grit_images = .{
        .{ .dir = "source/arm9/gfx", .name = "keyboardGfx", },
        .{ .dir = "source/arm9/gfx", .name = "default_font", },
    };
    const wf = b.addWriteFiles();
    nds9.addIncludePath(wf.getDirectory());

    inline for (grit_images) |image| {
        const image_path = libnds_c.path(image.dir ++ "/" ++ image.name ++ ".png");
        const convert = b.addRunArtifact(grit);

        convert.setCwd(wf.getDirectory());

        convert.addFileArg(image_path);
        convert.addArg("-ftc"); // output file type C
        convert.addArg("-W1"); // -W1 for error messages, -W2 for error + warnings
        convert.addArg("-o");
        convert.addArg(image.name);

        nds9.addCSourceFile(.{
            .file = wf.getDirectory().path(b, image.name ++ ".c"),
            .flags = &(libnds_flags ++ extra_libnds_flags),
        });
        nds9.step.dependOn(&convert.step);
    }

    b.default_step.dependOn(tools_step);
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
        .files = &grit_files,
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
        .files = &ndstool_files_c,
        .flags = &default_c_flags,
    });
    exe.addCSourceFiles(.{
        .root = ndstool_c.path("source"),
        .files = &ndstool_files_cpp,
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
        .files = &mmutil_files,
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
        .files = &squeezer_files,
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



// Ported from the libnds Makefiles
// cd fatfs
// find -L source -name "*.c" | grep -E -o source/.+
//
// cd libnds
// find -L source -name "*.c" | grep -E -o arm9/.+
// find -L source -name "*.S | grep -E -o arm9/.+

// find -L source -name "*.c" | grep -E -o common/.+
// find -L source -name "*.S" | grep -E -o common/.+

// find -L source -name "*.c" | grep -E -o arm7/.+
// find -L source -name "*.S" | grep -E -o arm7/.+

const fatfs_files = .{
    "ffunicode.c",
    "ff.c",
};
const grit_files = .{
    "cldib/cldib_adjust.cpp",
    "cldib/cldib_conv.cpp",
    "cldib/cldib_core.cpp",
    "cldib/cldib_tmap.cpp",
    "cldib/cldib_tools.cpp",
    "cldib/cldib_wu.cpp",
    "libgrit/cprs.cpp",
    "libgrit/cprs_huff.cpp",
    "libgrit/cprs_lz.cpp",
    "libgrit/cprs_rle.cpp",
    "libgrit/grit_core.cpp",
    "libgrit/grit_misc.cpp",
    "libgrit/grit_prep.cpp",
    "libgrit/grit_shared.cpp",
    "libgrit/grit_xp.cpp",
    "libgrit/logger.cpp",
    "libgrit/pathfun.cpp",
    "extlib/plum.cpp",
    "srcgrit/cli.cpp",
    "srcgrit/grit_main.cpp",
};

const ndstool_files_c = .{
    "loadme.c",
    "compile_date.c",
};
const ndstool_files_cpp = .{
    "ndstree.cpp",
    "header.cpp",
    "crc.cpp",
    "ndscodes.cpp",
    "raster.cpp",
    "utf16.cpp",
    "ndscreate.cpp",
    "logo.cpp",
    "bigint.cpp",
    "elf.cpp",
    "ndstool.cpp",
    "banner.cpp",
    "sha1.cpp",
    "ndsextract.cpp",
};

const squeezer_files = .{
    "imageops.c",
    "lodepng.c",
    "maxrects.c",
    "squeezer.c",
    "squeezerw.c",
};

const mmutil_files = .{
    "xm.c",
    "it.c",
    "mas.c",
    "s3m.c",
    "upload.c",
    "gba.c",
    "main.c",
    "simple.c",
    "mod.c",
    "samplefix.c",
    "wav.c",
    "adpcm.c",
    "kiwi.c",
    "msl.c",
    "nds.c",
    "files.c",
};

const libnds_arm9_files = .{
    "arm9/grf.c",
    "arm9/storage/card.c",
    "arm9/storage/sdmmc.twl.c",
    "arm9/storage/dldi.c",
    "arm9/storage/firmware.c",
    "arm9/trig.c",
    "arm9/math.c",
    "arm9/image.c",
    "arm9/teak/fifo.twl.c",
    "arm9/teak/process.twl.c",
    "arm9/teak/dsp.twl.c",
    "arm9/libc/fatfs.c",
    "arm9/libc/crt0_argv.c",
    "arm9/libc/filesystem.c",
    "arm9/libc/dirent.c",
    "arm9/libc/scandir.c",
    "arm9/libc/iob.c",
    "arm9/libc/fatfs/cache.c",
    "arm9/libc/fatfs/ffsystem.c",
    "arm9/libc/fatfs/diskio.c",
    "arm9/libc/statvfs.c",
    "arm9/libc/realpath.c",
    "arm9/libc/nitrofs.c",
    "arm9/libc/utime.c",
    "arm9/libc/chdir.c",
    "arm9/peripherals/camera.c",
    "arm9/peripherals/slot2.c",
    "arm9/peripherals/slot2solar.c",
    "arm9/peripherals/camera.twl.c",
    "arm9/peripherals/slot2gyro.c",
    "arm9/peripherals/piano.c",
    "arm9/peripherals/paddle.c",
    "arm9/peripherals/rumble.c",
    "arm9/peripherals/slot2.twl.c",
    "arm9/peripherals/ndsmotion.c",
    "arm9/peripherals/guitarGrip.c",
    "arm9/peripherals/slot2tilt.c",
    "arm9/system/initSystem.c",
    "arm9/system/cache.c",
    "arm9/system/exceptions.c",
    "arm9/system/system.c",
    "arm9/system/heapfuncs.c",
    "arm9/system/keys.c",
    "arm9/system/securearea.c",
    "arm9/system/gurumeditation.c",
    "arm9/sound.c",
    "arm9/video/video.c",
    "arm9/video/sprite_alloc.c",
    "arm9/video/shadowRegs.c",
    "arm9/video/videoGL.c",
    "arm9/video/gl2d.c",
    "arm9/video/sprite.c",
    "arm9/video/background.c",
    "arm9/video/boxtest.c",
    "arm9/video/window.c",
    "arm9/console.c",
    "arm9/linkedlist.c",
//     "arm9/decompress.c",
    "arm9/sassert.c",
    "arm9/pcx.c",
    "arm9/dynamicArray.c",
    "arm9/keyboard.c",
};
const libnds_arm9_asm = .{
    "arm9/storage/dldi_stub.S",
    "arm9/teak/utils.twl.S",
    "arm9/system/IntrWait.S",
    "arm9/system/cp15.S",
    "arm9/system/vectorbase.S",
    "arm9/system/mpu_setup.S",
    "arm9/system/cpu_clock.S",
    "arm9/system/exceptionHandler.S",
};
const libnds_common_files = .{
    "common/cardEeprom.c",
    "common/nwram.twl.c",
    "common/debugprint.c",
    "common/decompress.c",
    "common/card.c",
    "common/rsa.c",
    "common/cothread/threads.c",
    "common/syscalls.c",
    "common/reset.c",
    "common/libc/syscalls.c",
    "common/libc/locks.c",
    "common/libc/exit.c",
    "common/libc/sbrk.c",
    "common/timers.c",
    "common/ndsabi/coroutine.c",
    "common/ndsabi/context.c",
    "common/interrupts.c",
    "common/sha1.c",
    "common/fifosystem.c",
};
const libnds_common_asm = .{
    "common/biosCalls.twl.S",
    "common/dma.S",
    "common/cothread/aeabi_read_tp.S",
    "common/swiSoftReset.S",
    "common/cpu.S",
    "common/ndsabi/rmemcpy.S",
    "common/ndsabi/memset.S",
    "common/ndsabi/context.S",
    "common/ndsabi/memcpy.S",
    "common/ndsabi/memmove.S",
    "common/ndsabi/fiq_memcpy.S",
    "common/ndsabi/coroutine.S",
    "common/interruptDispatcher.S",
    "common/biosCalls.S",
    "common/debugprint.S",
};
const libnds_arm7_files = .{
    "arm7/audio.c",
    "arm7/touch.c",
    "arm7/storage/sdmmc.twl.c",
    "arm7/storage/card.twl.c",
    "arm7/storage/storage_fifo.twl.c",
    "arm7/storage/storage_fifo.c",
    "arm7/camera.twl.c",
    "arm7/tmio.twl.c",
    "arm7/microphone.twl.c",
    "arm7/touchFilter.c",
    "arm7/libc/filesystem.c",
    "arm7/libc/iob.c",
    "arm7/i2c.twl.c",
    "arm7/system.c",
    "arm7/gpio.c",
    "arm7/clock.c",
    "arm7/microphone.c",
    "arm7/audio.twl.c",
    "arm7/camerai2c.twl.c",
    "arm7/input.c",
    "arm7/tsc.c",
    "arm7/systemShutDown.c",
    "arm7/spi.c",
    "arm7/codec.twl.c",
    "arm7/firmware.c",
    "arm7/userSettings.c",
};
const libnds_arm7_asm = .{
    "arm7/intrwait.S",
};