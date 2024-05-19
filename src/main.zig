// const std = @import("std");
const c = @import("nds/c.zig");

// zig translate-c -DARM9 -I /opt/devkitpro/libnds/include \
//    -I /opt/devkitpro/portlibs/nds/include \
//    -I /opt/devkitpro/portlibs/armv5te/include \
//    /opt/devkitpro/libnds/include/nds.h > nds.zig

const nds = @import("nds/nds.zig");

export fn main(_: c_int, _: [*]const [*:0]const u8) void {
    _ = nds.consoleDemoInit();

    // _ = nds.printf("Hello, Zig");
    _ = c.printf("Hello from zig");
    while (true) {
        nds.swiWaitForVBlank();
    }
}
