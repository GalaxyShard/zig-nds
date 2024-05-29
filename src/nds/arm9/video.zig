
const external = struct {
    extern fn vramSetPrimaryBanks(a: c_int, b: c_int, c: c_int, d: c_int) u32;
};

const REG_DISPCNT: *volatile u32 = @ptrFromInt(0x04000000);
const REG_DISPCNT_SUB: *volatile u32 = @ptrFromInt(0x04001000);

const VRAM_CR: *volatile u32 = @ptrFromInt(0x04000240);
const VRAM_A_CR: *volatile u8 = @ptrFromInt(0x04000240);
const VRAM_B_CR: *volatile u8 = @ptrFromInt(0x04000241);
const VRAM_C_CR: *volatile u8 = @ptrFromInt(0x04000242);
const VRAM_D_CR: *volatile u8 = @ptrFromInt(0x04000243);
const VRAM_EFG_CR: *volatile u32 = @ptrFromInt(0x04000244);
const VRAM_E_CR: *volatile u8 = @ptrFromInt(0x04000244);
const VRAM_F_CR: *volatile u8 = @ptrFromInt(0x04000245);
const VRAM_G_CR: *volatile u8 = @ptrFromInt(0x04000246);
const WRAM_CR: *volatile u8 = @ptrFromInt(0x04000247);
const VRAM_H_CR: *volatile u8 = @ptrFromInt(0x04000248);
const VRAM_I_CR: *volatile u8 = @ptrFromInt(0x04000249);

pub inline fn Argb16(a: usize, r: usize, g: usize, b: usize) u16 {
    return @truncate((a << 15) | (b << 10) | (g << 5) | r);
}

pub const SCREEN_HEIGHT = 192;
pub const SCREEN_WIDTH = 256;


pub const VRAM_ENABLE = 1 << 7;
fn vramOffset(n: comptime_int) comptime_int {
    return n << 3;
}
pub const VramAType = enum(c_int) {
    Lcd = 0,
    MainBg_0x06000000 = 1 | vramOffset(0),
    MainBg_0x06020000 = 1 | vramOffset(1),
    MainBg_0x06040000 = 1 | vramOffset(2),
    MainBg_0x06060000 = 1 | vramOffset(3),
    
    MainSprite_0x06400000 = 2 | vramOffset(0),
    MainSprite_0x06420000 = 2 | vramOffset(1),

    TextureSlot0 = 3 | vramOffset(0),
    TextureSlot1 = 3 | vramOffset(1),
    TextureSlot2 = 3 | vramOffset(2),
    TextureSlot3 = 3 | vramOffset(3),

    pub fn mainBg() @This() { return @This().MainBg_0x06000000; }
    pub fn mainSprite() @This() { return @This().MainSprite_0x06400000; }
    pub fn texture() @This() { return @This().TextureSlot0; }
};
pub const VramBType = enum(c_int) {
    Lcd = 0,
    MainBg_0x06000000 = 1 | vramOffset(0),
    MainBg_0x06020000 = 1 | vramOffset(1),
    MainBg_0x06040000 = 1 | vramOffset(2),
    MainBg_0x06060000 = 1 | vramOffset(3),

    MainSprite_0x06400000 = 2 | vramOffset(0),
    MainSprite_0x06420000 = 2 | vramOffset(1),

    TextureSlot0 = 3 | vramOffset(0),
    TextureSlot1 = 3 | vramOffset(1),
    TextureSlot2 = 3 | vramOffset(2),
    TextureSlot3 = 3 | vramOffset(3),

    pub fn mainBg() @This() { return @This().MainBg_0x06020000; }
    pub fn mainSprite() @This() { return @This().MainSprite_0x06400000; }
    pub fn texture() @This() { return @This().TextureSlot1; }
};
pub const VramCType = enum(c_int) {
    Lcd = 0,
    MainBg_0x06000000 = 1 | vramOffset(0),
    MainBg_0x06020000 = 1 | vramOffset(1),
    MainBg_0x06040000 = 1 | vramOffset(2),
    MainBg_0x06060000 = 1 | vramOffset(3),

    Arm7_0x06000000 = 2 | vramOffset(0),
    Arm7_0x06020000 = 2 | vramOffset(1),
    SubBg_0x06200000 = 4 | vramOffset(0),

    TextureSlot0 = 3 | vramOffset(0),
    TextureSlot1 = 3 | vramOffset(1),
    TextureSlot2 = 3 | vramOffset(2),
    TextureSlot3 = 3 | vramOffset(3),

    pub fn mainBg() @This() { return @This().MainBg_0x06040000; }
    pub fn texture() @This() { return @This().TextureSlot2; }
    pub fn subBg() @This() { return @This().SubBg_0x06200000; }
    pub fn arm7() @This() { return @This().Arm7_0x06000000; }
};
pub const VramDType = enum(c_int) {
    Lcd = 0,
    MainBg_0x06000000 = 1 | vramOffset(0),
    MainBg_0x06020000 = 1 | vramOffset(1),
    MainBg_0x06040000 = 1 | vramOffset(2),
    MainBg_0x06060000 = 1 | vramOffset(3),

    Arm7_0x06000000 = 2 | vramOffset(0),
    Arm7_0x06020000 = 2 | vramOffset(1),
    SubSprite_0x06600000 = 4,

    TextureSlot0 = 3 | vramOffset(0),
    TextureSlot1 = 3 | vramOffset(1),
    TextureSlot2 = 3 | vramOffset(2),
    TextureSlot3 = 3 | vramOffset(3),

    pub fn mainBg() @This() { return @This().MainBg_0x06060000; }
    pub fn texture() @This() { return @This().TextureSlot3; }
    pub fn subSprite() @This() { return @This().SubSprite_0x06600000; }
    pub fn arm7() @This() { return @This().Arm7_0x06020000; }
};
pub const VramEType = enum(c_int) {
    Lcd = 0,
    MainBg_0x06000000 = 1,
    // MainSprite = 2,
    MainSprite_0x06400000 = 2,
    TexPalette = 3,
    BgExtPalette = 4,

    pub fn mainBg() @This() { return @This().MainBg_0x06000000; }
    pub fn mainSprite() @This() { return @This().MainSprite_0x06400000; }
};
pub const VramFType = enum(c_int) {
    Lcd = 0,
    MainBg_0x06000000 = 1 | vramOffset(0),
    MainBg_0x06004000 = 1 | vramOffset(1),
    MainBg_0x06010000 = 1 | vramOffset(2),
    MainBg_0x06014000 = 1 | vramOffset(3),
    // MainSprite = 2,
    MainSprite_0x06400000 = 2 | vramOffset(0),
    MainSprite_0x06404000 = 2 | vramOffset(1),
    MainSprite_0x06410000 = 2 | vramOffset(2),
    MainSprite_0x06414000 = 2 | vramOffset(3),
    // TexPalette = 3,
    TexPaletteSlot0 = 3 | vramOffset(0),
    TexPaletteSlot1 = 3 | vramOffset(1),
    TexPaletteSlot4 = 3 | vramOffset(2),
    TexPaletteSlot5 = 3 | vramOffset(3),
    // BgExtPalette = 4,
    BgExtPaletteSlot01 = 4 | vramOffset(0),
    BgExtPaletteSlot23 = 4 | vramOffset(1),
    SpriteExtPalette = 5,

    pub fn mainBg() @This() { return @This().MainBg_0x06000000; }
    pub fn mainSprite() @This() { return @This().MainSprite_0x06400000; }
    pub fn texPalette() @This() { return @This().TexPaletteSlot0; }
    pub fn bgExtPalette() @This() { return @This().BgExtPaletteSlot01; }
};
pub const VramGType = enum(c_int) {
    Lcd = 0,
    MainBg_0x06000000 = 1 | vramOffset(0),
    MainBg_0x06004000 = 1 | vramOffset(1),
    MainBg_0x06010000 = 1 | vramOffset(2),
    MainBg_0x06014000 = 1 | vramOffset(3),
    // MainSprite = 2,
    MainSprite_0x06400000 = 2 | vramOffset(0),
    MainSprite_0x06404000 = 2 | vramOffset(1),
    MainSprite_0x06410000 = 2 | vramOffset(2),
    MainSprite_0x06414000 = 2 | vramOffset(3),
    // TexPalette = 3,
    TexPaletteSlot0 = 3 | vramOffset(0),
    TexPaletteSlot1 = 3 | vramOffset(1),
    TexPaletteSlot4 = 3 | vramOffset(2),
    TexPaletteSlot5 = 3 | vramOffset(3),
    // BgExtPalette = 4,
    BgExtPaletteSlot01 = 4 | vramOffset(0),
    BgExtPaletteSlot23 = 4 | vramOffset(1),
    SpriteExtPalette = 5,

    pub fn mainBg() @This() { return @This().MainBg_0x06000000; }
    pub fn mainSprite() @This() { return @This().MainSprite_0x06400000; }
    pub fn texPalette() @This() { return @This().TexPaletteSlot0; }
    pub fn bgExtPalette() @This() { return @This().BgExtPaletteSlot01; }
};
pub const VramHType = enum(c_int) {
    Lcd = 0,
    // SubBg = 1,
    SubBg_0x06200000 = 1,
    SubBgExtPalette = 2,

    pub fn subBg() @This() { return @This().SubBg_0x06200000; }
};
pub const VramIType = enum(c_int) {
    Lcd = 0,
    SubBg0x06208000 = 1,
    // SubSprite = 2,
    SubSprite0x06600000 = 2,
    SubSpriteExtPalette = 3,

    pub fn subSprite() @This() { return @This().SubSprite0x06600000; }
};


pub inline fn vramSetPrimaryBanks(a: VramAType, b: VramBType, c: VramCType, d: VramDType) u32 {
    return external.vramSetPrimaryBanks(@intFromEnum(a), @intFromEnum(b), @intFromEnum(c), @intFromEnum(d));
}


pub fn vramSetBankA(bank: VramAType) void {
    VRAM_A_CR.* = VRAM_ENABLE | @intFromEnum(bank);
}
pub fn vramSetBankB(bank: VramBType) void {
    VRAM_B_CR.* = VRAM_ENABLE | @intFromEnum(bank);
}
pub fn vramSetBankC(bank: VramCType) void {
    VRAM_C_CR.* = VRAM_ENABLE | @intFromEnum(bank);
}
pub fn vramSetBankD(bank: VramDType) void {
    VRAM_D_CR.* = VRAM_ENABLE | @intFromEnum(bank);
}
pub fn vramSetBankE(bank: VramEType) void {
    VRAM_E_CR.* = VRAM_ENABLE | @intFromEnum(bank);
}
pub fn vramSetBankF(bank: VramFType) void {
    VRAM_F_CR.* = VRAM_ENABLE | @intFromEnum(bank);
}
pub fn vramSetBankG(bank: VramGType) void {
    VRAM_G_CR.* = VRAM_ENABLE | @intFromEnum(bank);
}
pub fn vramSetBankH(bank: VramHType) void {
    VRAM_H_CR.* = VRAM_ENABLE | @intFromEnum(bank);
}
pub fn vramSetBankI(bank: VramIType) void {
    VRAM_I_CR.* = VRAM_ENABLE | @intFromEnum(bank);
}


const Enable3D = 1 << 3;
const DISPLAY_BG0_ACTIVE = 1 << 8;
pub const VideoMode = enum(u32) {
    Mode0_2D = 0x10000, //< 4 2D backgrounds
    Mode1_2D = 0x10001, //< 4 2D backgrounds
    Mode2_2D = 0x10002, //< 4 2D backgrounds
    Mode3_2D = 0x10003, //< 4 2D backgrounds
    Mode4_2D = 0x10004, //< 4 2D backgrounds
    Mode5_2D = 0x10005, //< 4 2D backgrounds
    Mode6_2D = 0x10006, //< 4 2D backgrounds
    Mode0_3D = (0x10000 | DISPLAY_BG0_ACTIVE | Enable3D), //< 3 2D BGs, 1 3D BGs (main engine only)
    Mode1_3D = (0x10001 | DISPLAY_BG0_ACTIVE | Enable3D), //< 3 2D BGs, 1 3D BGs (main engine only)
    Mode2_3D = (0x10002 | DISPLAY_BG0_ACTIVE | Enable3D), //< 3 2D BGs, 1 3D BGs (main engine only)
    Mode3_3D = (0x10003 | DISPLAY_BG0_ACTIVE | Enable3D), //< 3 2D BGs, 1 3D BGs (main engine only)
    Mode4_3D = (0x10004 | DISPLAY_BG0_ACTIVE | Enable3D), //< 3 2D BGs, 1 3D BGs (main engine only)
    Mode5_3D = (0x10005 | DISPLAY_BG0_ACTIVE | Enable3D), //< 3 2D BGs, 1 3D BGs (main engine only)
    Mode6_3D = (0x10006 | DISPLAY_BG0_ACTIVE | Enable3D), //< 3 2D BGs, 1 3D BGs (main engine only)

    Fifo = (3 << 16), //< Video display from main memory

    FB0 = 0x00020000, //< Video display directly from VRAM_A in LCD mode
    FB1 = 0x00060000, //< Video display directly from VRAM_B in LCD mode
    FB2 = 0x000A0000, //< Video display directly from VRAM_C in LCD mode
    FB3 = 0x000E0000, //< Video display directly from VRAM_D in LCD mode
};
pub inline fn videoSetMode(mode: VideoMode) void {
    REG_DISPCNT.* = @intFromEnum(mode);
}
pub inline fn videoSetModeSub(mode: VideoMode) void {
    REG_DISPCNT_SUB.* = @intFromEnum(mode);
}
pub inline fn video3DEnabled() bool {
    return (REG_DISPCNT.* & Enable3D) != 0;
}
