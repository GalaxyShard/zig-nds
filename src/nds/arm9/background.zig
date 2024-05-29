const std = @import("std");
const video = @import("video.zig");

const assert = std.debug.assert;
pub const BgType = enum(c_int) {
    Text8Bpp,
    Text4Bpp,
    Rotation,
    ExRotation,
    Bmp8,
    Bmp16,
};
pub const BgSize = enum(c_int) {
    R_128x128 = (0 << 14),
    R_256x256 = (1 << 14),
    R_512x512 = (2 << 14),
    R_1024x1024 = (3 << 14),
    T_256x256 = (0 << 14) | (1 << 16),
    T_512x256 = (1 << 14) | (1 << 16),
    T_256x512 = (2 << 14) | (1 << 16),
    T_512x512 = (3 << 14) | (1 << 16),
    ER_128x128 = (0 << 14) | (2 << 16),
    ER_256x256 = (1 << 14) | (2 << 16),
    ER_512x512 = (2 << 14) | (2 << 16),
    ER_1024x1024 = (3 << 14) | (2 << 16),
    B8_128x128 = ((0 << 14) | (1 << 7) | (3 << 16)),
    B8_256x256 = ((1 << 14) | (1 << 7) | (3 << 16)),
    B8_512x256 = ((2 << 14) | (1 << 7) | (3 << 16)),
    B8_512x512 = ((3 << 14) | (1 << 7) | (3 << 16)),
    B8_1024x512 = (1 << 14) | (3 << 16),
    B8_512x1024 = 0 | (3 << 16),
    B16_128x128 = ((0 << 14) | (1 << 7) | (1 << 2) | (4 << 16)),
    B16_256x256 = ((1 << 14) | (1 << 7) | (1 << 2) | (4 << 16)),
    B16_512x256 = ((2 << 14) | (1 << 7) | (1 << 2) | (4 << 16)),
    B16_512x512 = ((3 << 14) | (1 << 7) | (1 << 2) | (4 << 16)),
};
extern fn bgInit_call(layer: c_int, t: c_int, size: c_int, mapBase: c_int, tileBase: c_int) c_int;
extern fn bgInitSub_call(layer: c_int, t: c_int, size: c_int, mapBase: c_int, tileBase: c_int) c_int;

pub inline fn bgInit(layer: c_int, t: BgType, size: BgSize, mapBase: c_int, tileBase: c_int) usize {
    assert(layer >= 0 and layer <= 3); // Only layers 0 - 3 are supported
    assert(tileBase >= 0 and tileBase <= 15); // Background tile base is out of range
    assert(mapBase >= 0 and mapBase <= 31); // Background Map Base is out of range
    assert(layer != 0 or !video.video3DEnabled()); // Background 0 is currently being used for 3D display
    assert(layer > 1 or t == BgType.Text8Bpp or t == BgType.Text4Bpp); // Incorrect background type for mode
    assert(tileBase == 0 or t < BgType.Bmp8); // Tile base is unused for bitmaps. Can be offset using mapBase * 16KiB
    assert(mapBase == 0 or t != BgType.Bmp8 or (size != BgSize.B8_512x1024 and size != BgSize.B8_1024x512)); // Large Bitmaps cannot be offset

    return @intCast(bgInit_call(layer, @intFromEnum(t), @intFromEnum(size), mapBase, tileBase));
}

extern var bgControl: [8]*volatile u16;
// extern var bgScrollTable: [8]*bg_scroll;
// extern var bgTransform: [8]*bg_transform;

pub const BgState = extern struct {
    angle: c_int,
    centerX: i32,
    centerY: i32,
    scaleX: i32,
    scaleY: i32,
    scrollX: i32,
    scrollY: i32,
    size: c_int,
    type: c_int,
    dirty: bool,
};
extern var bgState: [8]BgState;

// Returns a pointer to background map RAM (main engine)
inline fn bgMapRam(base: usize) [*]u16 {
    return @ptrFromInt(base * 0x800 + 0x06000000);
}
// Returns a pointer to background tile RAM (main engine)
inline fn bgTileRam(base: usize) [*]u16 {
    return @ptrFromInt(base * 0x4000 + 0x06000000);
}
// Returns a pointer to background graphics memory RAM (main engine)
inline fn bgBmpRam(base: usize) [*]u16 {
    return @ptrFromInt(base * 0x4000 + 0x06000000);
}

// Returns a pointer to background map RAM (sub engine)
inline fn bgMapRamSub(base: usize) [*]u16 {
    return @ptrFromInt(base * 0x800 + 0x06200000);
}
// Returns a pointer to background tile RAM (sub engine)
inline fn bgTileRamSub(base: usize) [*]u16 {
    return @ptrFromInt(base * 0x4000 + 0x06200000);
}
// Returns a pointer to background graphics memory RAM (sub engine)
inline fn bgBmpRamSub(base: usize) [*]u16 {
    return @ptrFromInt(base * 0x4000 + 0x06200000);
}


/// The shift to apply to map base when storing it in a background control register
const MAP_BASE_SHIFT = 8;
/// The shift to apply to tile base when storing it in a background control register
const TILE_BASE_SHIFT = 2;

/// Gets the current map base for the supplied background.
///
/// @param id Background ID returned from bgInit or bgInitSub.
/// @return Background map base.
/// @note This is the integer offset of the base not a pointer to the map.
inline fn bgGetMapBase(id: usize) usize {
    return (bgControl[@intCast(id)].* >> MAP_BASE_SHIFT) & 31;
}

/// Gets the background tile base.
///
/// @param id Background ID returned from bgInit or bgInitSub.
/// @return Background tile base.
inline fn bgGetTileBase(id: usize) usize {
    return (bgControl[@intCast(id)].* >> TILE_BASE_SHIFT) & 15;
}

/// Background graphics memory
const BG_GFX: *volatile u16 = @ptrFromInt(0x6000000);
/// Background graphics memory (sub engine)
const BG_GFX_SUB: *volatile u16 = @ptrFromInt(0x6200000);

pub inline fn bgGetGfxPtr(id: usize) [*]u16 {
    if (bgState[id].type < @intFromEnum(BgType.Bmp8)) {
        if (id < 4) {
            return bgTileRam(bgGetTileBase(id));
        } else {
            return bgTileRamSub(bgGetTileBase(id));
        }
    } else {
        if (id < 4) {
            return @ptrFromInt(@intFromPtr(BG_GFX) + 0x2000 * bgGetMapBase(id));
        } else {
            return @ptrFromInt(@intFromPtr(BG_GFX_SUB) + 0x2000 * bgGetMapBase(id));
        }
    }
}