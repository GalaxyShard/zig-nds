
const external = struct {
    extern fn powerOn(bits: c_int) void;
    extern fn powerOff(bits: c_int) void;
};

pub const REG_POWERCNT: *volatile u16 = @ptrFromInt(0x4000304);

pub const PM_ARM9_DIRECT = 1 << 16;
pub const PowerOptions = enum(c_int) {
    SoundAmp = 1 << 0,
    SoundMute = 1 << 1,
    BacklightBottom = 1 << 2,
    BacklightTop = 1 << 3,
    SystemPower = 1 << 6,

    Lcd = PM_ARM9_DIRECT | (1 << 0),
    Main2D = PM_ARM9_DIRECT | (1 << 1),
    Matrix = PM_ARM9_DIRECT | (1 << 2),
    Core3D = PM_ARM9_DIRECT | (1 << 3),
    Sub2D = PM_ARM9_DIRECT | (1 << 9),
    SwapLcds = PM_ARM9_DIRECT | (1 << 15),

    // Lcd, Main2D, Sub2D
    All2D = PM_ARM9_DIRECT | (1 << 0) | (1 << 1) | (1 << 9),
    // All2D, Core3D, Matrix
    All = PM_ARM9_DIRECT | (1 << 0) | (1 << 1) | (1 << 9) | (1 << 3) | (1 << 2),
};


pub inline fn powerOn(hardware: PowerOptions) void {
    external.powerOn(@intFromEnum(hardware));
}
pub inline fn powerOff(hardware: PowerOptions) void {
    external.powerOff(@intFromEnum(hardware));
}

pub inline fn lcdMainOnTop() void {
    REG_POWERCNT.* |= 1 << 15;
}
pub inline fn lcdMainOnBottom() void {
    REG_POWERCNT.* &= ~@as(u16, 1 << 15);
}
