const std = @import("std");

// zig translate-c -DARM9 -I /opt/devkitpro/libnds/include \
//    -I /opt/devkitpro/devkitARM/arm-none-eabi/include \
//    /opt/devkitpro/libnds/include/nds.h > nds.zig
const libnds = @import("nds/nds.zig");

const devkitpro_c = @cImport({
    @cInclude("stdio.h");
});

export fn main(_: c_int, _: [*]const [*:0]const u8) void {
    _ = libnds.consoleDemoInit();

    _ = devkitpro_c.printf("Hello, World!\n");

    while (true) {
        libnds.swiWaitForVBlank();
    }
}
