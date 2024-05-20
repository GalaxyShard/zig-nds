const std = @import("std");

// zig translate-c -DARM9 -I /opt/devkitpro/libnds/include \
//    -I /opt/devkitpro/devkitARM/arm-none-eabi/include \
//    /opt/devkitpro/libnds/include/nds.h > nds.zig

const nds = @import("nds/nds.zig");

export fn main(_: c_int, _: [*]const [*:0]const u8) void {
    _ = nds.consoleDemoInit();

    _ = std.c.printf("Hello from Zig!\n");
    // const stdout = std.io.getStdOut().writer();
    // stdout.print("Hello 2 from Zig\n", .{}) catch void;

    while (true) {
        nds.swiWaitForVBlank();
    }
}
