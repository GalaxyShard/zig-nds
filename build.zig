const std = @import("std");
const builtin = @import("builtin");

const c_flags = .{
    "-std=gnu2x",
    "-mcpu=arm946e-s+nofp", "-mthumb",
//     "-mthumb-interwork",

//     "-Wextra", "-Wpedantic", "-Wstrict-prototypes", "-Wshadow",

    "-D__NDS__",
    "-DNDEBUG",
//     "-x", "assembler-with-cpp",
//     "-Dlong_call=__long_call__",
//     "-Dasm=__asm__",
};


pub fn build(b: *std.Build) void {
    const optimize = b.standardOptimizeOption(.{});

    const nds_target = b.resolveTargetQuery(.{
        // nice resource: https://wiki.debian.o2rg/ArmEabiPort#Thumb_interworking_suggests_armv4t
        .cpu_arch = .thumb,
        .os_tag = .freestanding,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.arm946e_s },
        .abi = .eabi,
    });

    const nds9 = b.addStaticLibrary(.{
        .name = "nds9",
        .target = nds_target,
        .link_libc = true,
        .optimize = optimize,

        // Optimization option
        .omit_frame_pointer = true,
    });
    // TODO: remove dependency on external toolchain
    nds9.setLibCFile(b.path("libc.txt"));
    nds9.addIncludePath(b.path("src/c-override"));



    const fatfs_c = b.dependency("wf-fatfs", .{
        .target = nds_target,
        .optimize = optimize,
        .link_libc = true,
    });
    nds9.addCSourceFiles(.{
        .root = fatfs_c.path("source"),
        .files = &fatfs_files,
    });
    nds9.addIncludePath(fatfs_c.path("source"));


    const libnds_c = b.dependency("libnds", .{
        .target = nds_target,
        .optimize = optimize,
        .link_libc = true,
    });
    nds9.addCSourceFiles(.{
        .root = libnds_c.path("source"),
        .files = &(libnds_arm9_files ++ libnds_common_files),
        .flags = &(.{
            "-DARM9",
        } ++ c_flags),
    });
    inline for (libnds_arm9_assembly ++ libnds_common_assembly) |path| {
        nds9.addAssemblyFile(libnds_c.path("source/" ++ path));
    }
    // NOTE: keep in sync with libnds/Makefile.arm9
    nds9.addIncludePath(libnds_c.path("include"));
    nds9.addIncludePath(libnds_c.path("source"));
    nds9.addIncludePath(libnds_c.path("source/common/ndsabi"));
    nds9.addIncludePath(libnds_c.path("source/arm9/libc/fatfs"));

    b.installArtifact(nds9);

//     const nds7 = b.addStaticLibrary(.{
//         .name = "nds7",
//         .target = nds_target,
//         .link_libc = true,
//         .optimize = optimize,
//     });
    b.default_step.dependOn(&nds9.step);

}




// Ported from the libnds Makefiles
// cd fatfs
// find -L source -name "*.c" | grep -E -o source/.+
//
// cd libnds
// find -L source -name "*.c" | grep -E -o arm9/.+
// find -L source -name "*.s" | grep -E -o arm9/.+

// find -L source -name "*.c" | grep -E -o common/.+
// find -L source -name "*.s" | grep -E -o common/.+

// find -L source -name "*.c" | grep -E -o arm7/.+
// find -L source -name "*.s" | grep -E -o arm7/.+

const fatfs_files = .{
    "ffunicode.c",
    "ff.c",
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
    "arm9/decompress.c",
    "arm9/sassert.c",
    "arm9/pcx.c",
    "arm9/dynamicArray.c",
    "arm9/keyboard.c",
};
const libnds_arm9_assembly = .{
    "arm9/storage/dldi_stub.s",
    "arm9/teak/utils.twl.s",
    "arm9/system/IntrWait.s",
    "arm9/system/cp15.s",
    "arm9/system/vectorbase.s",
    "arm9/system/mpu_setup.s",
    "arm9/system/cpu_clock.s",
    "arm9/system/exceptionHandler.s",
};
const libnds_common_files = .{
    "common/cardEeprom.c",
    "common/nwram.twl.c",
    "common/debugprint.c",
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
    "common/biosCalls.twl.s",
    "common/dma.s",
    "common/cothread/aeabi_read_tp.s",
    "common/swiSoftReset.s",
    "common/cpu.s",
    "common/ndsabi/rmemcpy.s",
    "common/ndsabi/memset.s",
    "common/ndsabi/context.s",
    "common/ndsabi/memcpy.s",
    "common/ndsabi/memmove.s",
    "common/ndsabi/fiq_memcpy.s",
    "common/ndsabi/coroutine.s",
    "common/interruptDispatcher.s",
    "common/biosCalls.s",
    "common/debugprint.s",
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
    "arm7/intrwait.s",
};