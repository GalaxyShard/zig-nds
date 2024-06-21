const std = @import("std");
const builtin = @import("builtin");

const emulator = "desmume";
const game_title = "Homebrew Game";

// Zig 0.13

pub fn build(b: *std.Build) void {
    const optimize = b.standardOptimizeOption(.{});

    const game_icon: std.Build.LazyPath = .{ .cwd_relative = "/opt/blocksds/core/sys/icon.bmp" };

    const arm9_obj = b.addObject(.{
        .name = "arm9",
        .root_source_file = b.path("src/main.zig"),
        .target = b.resolveTargetQuery(.{
            // nice resource: https://wiki.debian.o2rg/ArmEabiPort#Thumb_interworking_suggests_armv4t
            .cpu_arch = .thumb,
            .os_tag = .freestanding,
            .cpu_model = .{ .explicit = &std.Target.arm.cpu.arm946e_s },
            .abi = .eabi,
        }),
        .link_libc = true,
        .optimize = optimize,
    });

    // armv5te uses thumb version 2
    // https://documentation-service.arm.com/static/5f8dacc8f86e16515cdb865a

    arm9_obj.setLibCFile(b.path("libc.txt"));
    arm9_obj.addIncludePath(.{ .cwd_relative = "/opt/blocksds/core/libs/libnds/include" });
//     arm9_obj.addIncludePath(.{ .cwd_relative = "/opt/blocksds/core/libs/maxmod/include" });

    // arm9_obj.addLibraryPath(.{ .cwd_relative = "/opt/blocksds/core/libs/libnds/lib" });
    // arm9_obj.addLibraryPath(.{ .cwd_relative = "/opt/blocksds/core/libs/maxmod/lib" });
//     arm9_obj.linkSystemLibrary("nds9");
//     arm9_obj.linkSystemLibrary("mm9");



    var wf = b.addWriteFiles();
    const arm9_obj_file = wf.addCopyFile(arm9_obj.getEmittedBin(), "arm9.o");


    const elf = b.addSystemCommand(&.{
//         devkitpro ++ "/devkitARM/bin/arm-none-eabi-gcc",
        "/opt/wonderful/toolchain/gcc-arm-none-eabi/bin/arm-none-eabi-gcc",
//         "arm-none-eabi-gcc",
        "-g",
        "-mthumb",
        "-mcpu=arm946e-s+nofp",

        // NOTE: explicitly allows code execution from stack, possibly use -z,noexecstack instead?
        "-Wl,-z,execstack",
//         "-Wl,--verbose", // output info
        "-specs=/opt/blocksds/core/sys/crts/ds_arm9.specs",
    });
//     elf.addPrefixedFileArg("-Wl,-T", b.path("arm9_link.ld"));
//     b.default_step.dependOn(&b.addInstallFile(elf.captureStdOut(), "gcc-output-verbose-3").step);

//     const elf = b.addSystemCommand(&.{
//         devkitpro ++ "/devkitARM/bin/arm-none-eabi-ld",
// //         "arm-none-eabi-ld",
//         "-T" ++ devkitpro ++ "/devkitARM/arm-none-eabi/lib/ds_arm9.mem",
//         "-T" ++ devkitpro ++ "/devkitARM/arm-none-eabi/lib/ds_arm9.ld",
//         "-L" ++ devkitpro ++ "/devkitARM/arm-none-eabi/lib",
//         "--gc-sections", "--no-warn-rwx-segments",
//         devkitpro ++ "/devkitARM/arm-none-eabi/lib/ds_arm9_crt0.o",
//         devkitpro ++ "/devkitARM/lib/gcc/arm-none-eabi/14.1.0/thumb/crtbegin.o",
//         devkitpro ++ "/devkitARM/lib/gcc/arm-none-eabi/14.1.0/thumb/crti.o",
// //         devkitpro ++ "/devkitARM/arm-none-eabi/lib/thumb/crt0.o",
//         // NOTE: explicitly allows code execution from stack, possibly use -z,noexecstack instead?
//         "-z", "execstack",
//     });
//     arm9_obj.setLinkerScript(b.path("arm9_link.ld"))
    elf.setCwd(wf.getDirectory());
    elf.setEnvironmentVariable("BLOCKSDS", "/opt/blocksds/core");

    elf.addFileArg(arm9_obj_file);

    elf.addArg("-o");
    const elf_file = elf.addOutputFileArg("arm9.elf");

    elf.addArgs(&.{
        "-L/opt/blocksds/core/libs/libnds/lib",
//         "-L/opt/blocksds/core/libs/maxmod/lib",
//         "-L/opt/wonderful/toolchain/gcc-arm-none-eabi/arm-none-eabi/lib/thumb",
        "-L/opt/wonderful/toolchain/gcc-arm-none-eabi/arm-none-eabi/lib",
        "-Wl,--start-group", // fixes missing read/write/lseek/close linker errors
        "-lnds9",
        "-lc",
//         "-lmm9",
        "-Wl,--end-group",
    });

//     elf.addArg("-Map");
//     const map_path = elf.addOutputFileArg("arm9_symbols.map");
    const map_path = elf.addPrefixedOutputFileArg("-Wl,-Map,", "symbols.map");
    const install_map_file = b.addInstallFileWithDir(map_path, .prefix, "arm9_symbols.map");



    const nds = b.addSystemCommand(&.{
        "/opt/blocksds/core/tools/ndstool/ndstool",
    });
    nds.setCwd(wf.getDirectory());

    nds.addArg("-b");
    nds.addFileArg(game_icon);
    nds.addArg(game_title);

    nds.addArg("-7"); // arm7 elf
    nds.addFileArg(.{ .cwd_relative = "/opt/blocksds/core/sys/default_arm7/arm7.elf" });

    nds.addArg("-9"); // arm9 elf
    nds.addFileArg(elf_file);

    nds.addArg("-c");
    const nds_path = nds.addOutputFileArg("zig-nds.nds");

    const install_nds = b.addInstallFileWithDir(nds_path, .prefix, "zig-nds.nds");

    b.default_step.dependOn(&install_map_file.step);
    install_map_file.step.dependOn(&elf.step);

    b.default_step.dependOn(&install_nds.step);
    install_nds.step.dependOn(&nds.step);
    nds.step.dependOn(&elf.step);

    elf.step.dependOn(&arm9_obj.step);

    // perhaps switch to no$gba or melonds
    const run_step = b.step("run", "Run in emulator");
    const emulator_cmd = b.addSystemCommand(&.{emulator});
    emulator_cmd.addFileArg(nds_path);

    run_step.dependOn(&emulator_cmd.step);
    emulator_cmd.step.dependOn(&install_nds.step);
}
