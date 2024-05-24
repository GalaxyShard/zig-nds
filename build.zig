const std = @import("std");
const builtin = @import("builtin");

const emulator = "desmume";
const flags = .{"-lnds9"};
const devkitpro = "/opt/devkitpro";

// Zig 0.12

pub fn build(b: *std.Build) void {
    const optimize = b.standardOptimizeOption(.{});

    const obj = b.addObject(.{
        .name = "zig-nds",
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
    // obj.setLibCFile(b.path("libc.txt"));
    // obj.addIncludePath(.{ .cwd_relative = devkitpro ++ "/portlibs/nds/include" });
    // obj.addIncludePath(.{ .cwd_relative = devkitpro ++ "/portlibs/armv5te/include" });
    obj.addIncludePath(.{ .cwd_relative = devkitpro ++ "/libnds/include" });
    obj.addIncludePath(.{ .cwd_relative = devkitpro ++ "/devkitARM/arm-none-eabi/include" });

    // obj.addLibraryPath(.{ .cwd_relative = devkitpro ++ "/libnds/lib" });
    // obj.addLibraryPath(.{ .cwd_relative = devkitpro ++ "/devkitARM/arm-none-eabi/lib" });
    // obj.linkSystemLibrary("nds9");

    // obj.addLibraryPath(.{ .cwd_relative = devkitpro ++ "/portlibs/nds/lib" });
    // obj.addLibraryPath(.{ .cwd_relative = devkitpro ++ "/portlibs/armv5te/lib" });

    const extension = if (builtin.target.os.tag == .windows) ".exe" else "";

    var wf = b.addWriteFiles();
    _ = wf.addCopyFile(obj.getEmittedBin(), "zig-nds.o");

    const elf = b.addSystemCommand(&(.{
        devkitpro ++ "/devkitARM/bin/arm-none-eabi-gcc" ++ extension,
        // "arm-none-eabi-gcc",
        "-g",
        "-mthumb",
        "-mthumb-interwork",
        // NOTE: explicitly allows code execution from stack, possibly use -z,noexecstack instead?
        "-Wl,-z,execstack",
        "-specs=" ++ devkitpro ++ "/devkitARM/arm-none-eabi/lib/ds_arm9.specs",
        "zig-nds.o",
        "-L" ++ devkitpro ++ "/libnds/lib",
        "-L" ++ devkitpro ++ "/devkitARM/arm-none-eabi/lib",
        // "-L" ++ devkitpro ++ "/portlibs/nds/lib",
        // "-L" ++ devkitpro ++ "/portlibs/armv5te/lib",
    } ++ flags ++ .{
        "-o",
        "zig-nds.elf",
    }));
    elf.setCwd(wf.getDirectory());
    const map_path = elf.addPrefixedOutputFileArg("-Wl,-Map,", "zig-nds.map");
    const install_map_file = b.addInstallFileWithDir(map_path, .prefix, "zig-nds.map");

    const nds = b.addSystemCommand(&.{
        devkitpro ++ "/tools/bin/ndstool" ++ extension,
        "-9",
        "zig-nds.elf",
        "-c", // one more argument after this
    });

    nds.setCwd(wf.getDirectory());
    // adds argument to nds
    const nds_path = nds.addOutputFileArg("zig-nds.nds");
    const install_nds = b.addInstallFileWithDir(nds_path, .prefix, "zig-nds.nds");

    b.default_step.dependOn(&install_map_file.step);
    install_map_file.step.dependOn(&elf.step);

    b.default_step.dependOn(&install_nds.step);
    nds.step.dependOn(&elf.step);

    elf.step.dependOn(&obj.step);

    // perhaps switch to no$gba or melonds
    const run_step = b.step("run", "Run in DeSmuME");
    const desmume = b.addSystemCommand(&.{ emulator, "zig-out/zig-nds.nds" });
    run_step.dependOn(&nds.step);
    run_step.dependOn(&desmume.step);
}
