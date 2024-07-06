const std = @import("std");
const builtin = @import("builtin");

const c_flags = .{
    "-std=gnu2x", // TODO: change to gnu23
//     "-mcpu=arm946e-s+nofp", "-mthumb",
//     "-mthumb-interwork",

//     "-Wextra", "-Wpedantic", "-Wstrict-prototypes", "-Wshadow",

    "-D__NDS__", "-DNDEBUG",
    "-nostdinc", // no standard include paths
//     "-nostdinc++",
//     "-Dlong_call=__long_call__",
};


pub fn build(b: *std.Build) !void {
    const optimize = b.standardOptimizeOption(.{});

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

    const nds9_target = b.resolveTargetQuery(.{
        // nice resource: https://wiki.debian.org/ArmEabiPort#Thumb_interworking_suggests_armv4t
        // TODO: check if thumb interworking must be enabled
        // debian.org suggests it is required by eabi
        .cpu_arch = .thumb,
        .os_tag = .freestanding,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.arm946e_s },
        .abi = .eabi,
    });

    const fatfs_c = b.dependency("wf-fatfs", .{});
    const libnds_c = b.dependency("libnds", .{});
    const grit_c = b.dependency("grit", .{});
    const ndstool_c = b.dependency("ndstool", .{});
    const win_iconv_c = b.dependency("win-iconv", .{});



    const nds9 = b.addStaticLibrary(.{
        .name = "nds9",
        .target = nds9_target,
        .link_libc = true,
        .optimize = optimize,

        // Optimization option
        .omit_frame_pointer = true,
    });
    // TODO: remove dependency on external toolchain
    nds9.setLibCFile(b.path("libc.txt"));


    nds9.addIncludePath(fatfs_c.path("source"));
    nds9.addCSourceFiles(.{
        .root = fatfs_c.path("source"),
        .files = &fatfs_files,
    });

    // NOTE: keep in sync with libnds/Makefile.arm9
    nds9.addIncludePath(libnds_c.path("include"));
    nds9.addIncludePath(libnds_c.path("source"));
    nds9.addIncludePath(libnds_c.path("source/common/ndsabi"));
    nds9.addIncludePath(libnds_c.path("source/arm9/libc/fatfs"));
    nds9.addCSourceFiles(.{
        .root = libnds_c.path("source"),
        .files = &(
            libnds_arm9_files ++ libnds_common_files
            ++ libnds_arm9_assembly ++ libnds_common_assembly
        ),
        .flags = &(c_flags ++ .{ "-DARM9" }),
    });

    b.installArtifact(nds9);

//     const nds7 = b.addStaticLibrary(.{
//         .name = "nds7",
//         .target = nds_target,
//         .link_libc = true,
//         .optimize = optimize,
//     });



    const grit_exe = b.addExecutable(.{
        .name = "grit",
        .target = tools_target,
        .link_libc = true,
    });
    const grit_flags = .{ "-DPACKAGE_VERSION=\"0.9.2\"", "-Wall" };
    const libplum_platform_flags: [1][]const u8 = (
        if (tools_target.result.os.tag == .windows)
            .{ "-Daligned_alloc=_aligned_malloc" }
        else
            .{ "" }
    );

    grit_exe.addCSourceFile(.{
        .file = grit_c.path("libplum/libplum.c"),
        .flags = &(grit_flags ++ libplum_platform_flags ++ .{
            "-std=gnu17",

            "-Wno-dangling-else", "-Wno-parentheses", "-Wno-misleading-indentation", "-Wno-unused-result", "-Wno-comment", "-Wno-unused-variable", "-Wno-sign-compare", "-Wno-unused-value", "-Wno-unused-but-set-variable",
            // Clang-specific
            "-Wno-tautological-compare",

//             GCC: "-Wno-class-memaccess", "-Wno-maybe-uninitialized", "-Wno-format-truncation"
        }),
    });

    grit_exe.addCSourceFiles(.{
        .root = grit_c.path(""),
        .files = &grit_files,
        .flags = &(grit_flags ++ .{ "-std=gnu++14" }),
    });
    const grit_include_paths = .{"cldib", "extlib", "libgrit", "libplum", "srcgrit"};
    inline for (grit_include_paths) |path| {
        grit_exe.addIncludePath(grit_c.path(path));
    }
    grit_exe.linkLibCpp();
//     b.addRunArtifact(grit_exe);
    b.installArtifact(grit_exe);



    // may need to link -liconv on MacOS
    const ndstool_exe = b.addExecutable(.{
        .name = "ndstool",
        .target = tools_target,
        .link_libc = true,

    });
    const ndstool_flags = .{
        "-DPACKAGE_VERSION=\"2.3.0\"",
        "-DWINICONV_CONST=", // for windows iconv
    };

    ndstool_exe.addCSourceFiles(.{
        .root = ndstool_c.path("source"),
        .files = &ndstool_files_c,
        .flags = &(ndstool_flags ++ .{
            "-std=gnu17",

            "-Wall", "-Wextra", "-Wpedantic", "-Wstrict-prototypes",
        }),
    });
    ndstool_exe.addCSourceFiles(.{
        .root = ndstool_c.path("source"),
        .files = &ndstool_files_cpp,
        .flags = &(ndstool_flags ++ .{
            "-std=gnu++14",

            "-Wno-unused-result",
            // GCC: "-Wno-class-memaccess", "-Wno-stringop-truncation"
        }),
    });
    if (tools_target.result.os.tag == .windows) {
        ndstool_exe.addCSourceFile(.{
            .file = win_iconv_c.path("win_iconv.c"),
            .flags = &.{
                "-Wall", "-Wpedantic",
            },
        });
        ndstool_exe.addIncludePath(win_iconv_c.path(""));
    }
    if (tools_target.result.os.tag == .macos) {
        const ndstool_stub = b.addObject(.{
            .name = "ndstool-stub",
            .target = tools_target,
            .optimize = .ReleaseSafe,
            .link_libc = true,
            .root_source_file = b.path("iconv-macos-stub.zig"),
        });
        ndstool_exe.addObjectFile(ndstool_stub.getEmittedBin());
    }
    ndstool_exe.addIncludePath(ndstool_c.path("source"));
    ndstool_exe.linkLibCpp();
    b.installArtifact(ndstool_exe);
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
const libnds_arm9_assembly = .{
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
const libnds_common_assembly = .{
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
    "arm7/systemShutDown.c",
    "arm7/spi.c",
    "arm7/codec.twl.c",
    "arm7/firmware.c",
    "arm7/userSettings.c",
};
const libnds_arm7_assembly = .{
    "arm7/intrwait.S",
};