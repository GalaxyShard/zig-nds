const std = @import("std");

const nds = @import("nds/arm9.zig");

const devkitpro_c = @cImport({
    @cInclude("stdio.h");
});

fn draw_buffer(buffer: []u16, offset: isize) void {
    for (0..192) |y| {
        for (0..256) |x| {
            // const red = 31 - y % 32;
            // const blue = 31 - x % 32;
            // const green = blue;
            const red = @as(usize, @intCast(@mod(@as(isize, @intCast(y)) + offset, 192))) / (192 / 32);
            const green = x / (256 / 32);
            const blue = (red + green) / 2;
            buffer[(y << 8) + x] = nds.Argb16(1, red, green, blue);
        }
    }
}

export fn main(_: c_int, _: [*]const [*:0]const u8) void {
    nds.powerOnArm9(nds.Arm9PowerOptions.All2D);
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
    _ = devkitpro_c.printf("testing\n");

    const ptr = nds.bgGetGfxPtr(bg);
    var offset: isize = 0;
    var accell: isize = 1;

    var buffer = std.heap.raw_c_allocator.alloc(u16, 256 * 192) catch @panic("OOM");
    defer std.heap.raw_c_allocator.free(buffer);

    draw_buffer(buffer, 0);

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
        if (keys_down.x) {
            nds.lcdMainOnBottom();
        }
        if (keys_down.y) {
            nds.lcdMainOnTop();
        }
        if (keys_down.down or keys_down.up) {
            draw_buffer(buffer, offset);
        }
        const index = rng.random().intRangeLessThan(usize, 0, 192 * 256);
        buffer[index] = nds.Argb16(1, 31, 31, 31);

        nds.DC_FlushAll();
        nds.dmaCopyHalfWords(3, buffer.ptr, ptr, buffer.len * 2);
    }
}
