const std = @import("std");
const builtin = @import("builtin");

const emulator = "desmume";
const devkitpro = "/opt/devkitpro";

// Zig 0.13

pub fn build(b: *std.Build) void {
    const optimize = b.standardOptimizeOption(.{});

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

    // may be needed
    // arm9_obj.setLibCFile(b.path("libc.txt"));
    // arm9_obj.addIncludePath(.{ .cwd_relative = devkitpro ++ "/portlibs/nds/include" });
    // arm9_obj.addIncludePath(.{ .cwd_relative = devkitpro ++ "/portlibs/armv5te/include" });
    arm9_obj.addIncludePath(.{ .cwd_relative = devkitpro ++ "/libnds/include" });
    arm9_obj.addIncludePath(.{ .cwd_relative = devkitpro ++ "/devkitARM/arm-none-eabi/include" });

    // arm9_obj.addLibraryPath(.{ .cwd_relative = devkitpro ++ "/libnds/lib" });
    // arm9_obj.addLibraryPath(.{ .cwd_relative = devkitpro ++ "/devkitARM/arm-none-eabi/lib" });
    // arm9_obj.linkSystemLibrary("nds9");

    // arm9_obj.addLibraryPath(.{ .cwd_relative = devkitpro ++ "/portlibs/nds/lib" });
    // arm9_obj.addLibraryPath(.{ .cwd_relative = devkitpro ++ "/portlibs/armv5te/lib" });




    var wf = b.addWriteFiles();
    const arm9_obj_file = wf.addCopyFile(arm9_obj.getEmittedBin(), "arm9.o");

//  library paths on devkitpro arm-none-eabi-gcc
//  /opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/14.1.0/
//  /opt/devkitpro/devkitARM/lib/gcc/
//  /opt/devkitpro/devkitARM/arm-none-eabi/lib/arm-none-eabi/14.1.0/
//  /opt/devkitpro/devkitARM/arm-none-eabi/lib/

    const elf = b.addSystemCommand(&.{
        devkitpro ++ "/devkitARM/bin/arm-none-eabi-gcc",
//         "arm-none-eabi-gcc",
        "-g",
        "-mthumb",
        "-mthumb-interwork",
//         "-Wl,-T" ++ devkitpro ++ "/devkitARM/arm-none-eabi/lib/ds_arm9.mem",
//         "-Wl,-T" ++ devkitpro ++ "/devkitARM/arm-none-eabi/lib/ds_arm9.ld",
//         "-Wl,--gc-sections,--no-warn-rwx-segments",
//
//          "-Wl,-L" ++ "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/14.1.0/",
//          "-Wl,-L" ++ "/opt/devkitpro/devkitARM/lib/gcc/",
//          "-Wl,-L" ++ "/opt/devkitpro/devkitARM/arm-none-eabi/lib/arm-none-eabi/14.1.0/",
//          "-Wl,-L" ++ "/opt/devkitpro/devkitARM/arm-none-eabi/lib/",
         "-L" ++ "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/14.1.0/",
         "-L" ++ "/opt/devkitpro/devkitARM/lib/gcc/",
         "-L" ++ "/opt/devkitpro/devkitARM/arm-none-eabi/lib/arm-none-eabi/14.1.0/",
         "-L" ++ "/opt/devkitpro/devkitARM/arm-none-eabi/lib/",

        // NOTE: explicitly allows code execution from stack, possibly use -z,noexecstack instead?
        "-Wl,-z,execstack",
//         "-Wl,--verbose", // output info
        "-specs=" ++ devkitpro ++ "/devkitARM/arm-none-eabi/lib/ds_arm9.specs",
//         "-specs=" ++ devkitpro ++ "/devkitARM/lib/gcc/arm-none-eabi/14.1.0/sync-none.specs",

//         devkitpro ++ "/devkitARM/arm-none-eabi/lib/thumb/ds_arm9_crt0.o",
//         devkitpro ++ "/devkitARM/lib/gcc/arm-none-eabi/14.1.0/thumb/crti.o",
//         devkitpro ++ "/devkitARM/lib/gcc/arm-none-eabi/14.1.0/thumb/crtbegin.o",
//         devkitpro ++ "/devkitARM/arm-none-eabi/lib/thumb/crt0.o",
    });
//     elf.addPrefixedFileArg("-Wl,-T", b.path("arm9_link.ld"));
//     elf.setEnvironmentVariable("LIBRARY_PATH", "/opt/devkitpro/devkitARM/arm-none-eabi/lib/thumb");

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

    elf.addFileArg(arm9_obj_file);

    elf.addArg("-o");
    const elf_file = elf.addOutputFileArg("arm9.elf");

    elf.addArgs(&.{
        "-L" ++ devkitpro ++ "/libnds/lib",
        "-lnds9",
    });

    const map_path = elf.addPrefixedOutputFileArg("-Wl,-Map,", "symbols.map");
//     elf.addArg("-Map");
//     const map_path = elf.addOutputFileArg("arm9_symbols.map");
    const install_map_file = b.addInstallFileWithDir(map_path, .prefix, "arm9_symbols.map");



    const nds = b.addSystemCommand(&.{
        devkitpro ++ "/tools/bin/ndstool",
    });
    nds.setCwd(wf.getDirectory());

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
    const run_step = b.step("run", "Run in DeSmuME");
    const emulator_cmd = b.addSystemCommand(&.{emulator});
    emulator_cmd.addFileArg(nds_path);

    run_step.dependOn(&emulator_cmd.step);
    emulator_cmd.step.dependOn(&install_nds.step);
}
