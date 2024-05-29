const std = @import("std");

// zig translate-c -DARM9 -I /opt/devkitpro/libnds/include \
//    -I /opt/devkitpro/devkitARM/arm-none-eabi/include \
//    /opt/devkitpro/libnds/include/nds.h > nds.zig
//
// remove @"" and [pub const packed_struct = struct_PACKED;]
// replace: (pub const.+, \.hex\)\))\.\*
// with: $1
// so that memory addresses are not dereferenced instantly
const nds = @import("nds/arm9.zig");

const devkitpro_c = @cImport({
    @cInclude("stdio.h");
});

export fn main(_: c_int, _: [*]const [*:0]const u8) void {
    nds.powerOn(.All2D);
    nds.lcdMainOnBottom();

    nds.videoSetMode(.Mode5_2D);

    nds.videoSetModeSub(.Mode5_2D);

    _ = nds.vramSetPrimaryBanks(
        .MainBg_0x06000000,
        .Lcd,
        .Lcd,
        .Lcd,
    );

    // slot 0, bitmap 16-bit ABGR, offset of 0 into vram, unused last argument
    const bg = nds.bgInit(2, .Bmp16, .B16_256x256, 0, 0);

    _ = nds.consoleDemoInit();
    // const console: *nds.PrintConsole = nds.consoleInit(null, 1, .Text4Bpp, .T_256x256, 22, 0, false, true);
    _ = devkitpro_c.printf("testing\n");
    // _ = console;

    const ptr = nds.bgGetGfxPtr(bg);
    // timerStart(1, ClockDivider_256, timerFreqToTicks_256(5), timer1_handler);
    // nds.dmaFillWords();
    var offset: isize = 0;
    var accell: isize = 1;

    var buffer = std.mem.zeroes([192 * 256]u16);

    var rng = std.Random.DefaultPrng.init(1230);

    while (true) {
        nds.swiWaitForVBlank();

        nds.scanKeys();
        const keys_down = nds.keysHeld();

        if (keys_down.a) {
            accell += 1;
        }
        if (keys_down.b and accell > 1) {
            accell -= 1;
        }
        if (keys_down.down) {
            offset += accell;
        }
        if (keys_down.up) {
            offset -= accell;
        }
        if (keys_down.down or keys_down.up) {
            for (0..192) |y| {
                for (0..256) |x| {
                    const red = @as(usize, @intCast(@mod(@as(isize, @intCast(y)) + offset, 192))) / (192 / 32);
                    const green = x / (256 / 32);
                    const blue = (red + green) / 2;
                    // const red = 5;
                    // const green = 10;
                    // const blue = 0;
                    // // ptr[x + (y << 8)] = nds.Argb16(1, x + y, 32, y * x);
                    buffer[(y << 8) + x] = nds.Argb16(1, red, green, blue);
                }
            }
        }
        const index = rng.random().intRangeLessThan(usize, 0, 192 * 256);
        buffer[index] = nds.Argb16(1, 31, 31, 31);

        nds.DC_FlushAll();
        nds.dmaCopyHalfWords(3, &buffer, ptr, buffer.len * 2);
    }
}
// export fn main(_: c_int, _: [*]const [*:0]const u8) void {
//     _ = nds.consoleDemoInit();

//     _ = devkitpro_c.printf("Hello, World!\n");

//     while (true) {
//         nds.swiWaitForVBlank();

//     }
// }
