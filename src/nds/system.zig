const external = struct {
    extern fn powerOn(bits: c_int) void;
    extern fn powerOff(bits: c_int) void;
};

pub const REG_POWERCNT: *volatile u16 = @ptrFromInt(0x4000304);

pub const PM_ARM9_DIRECT = 1 << 16;

pub const Arm7PowerOptions = packed struct(u16) {
    sound_amp: bool = false, // 0, Power the sound hardware (needed to hear stuff in GBA mode too).
    sound_mute: bool = false, // 1, Mute the main speakers, headphone output will still work.
    backlight_bottom: bool = false, // 2, Enable the bottom backlight if set.
    backlight_top: bool = false, // 3, Enable the top backlight if set.
    _pad: u2 = 0, // 4-5
    system_power_off: bool = false, // 6, Turn the power *off* if set.
    _pad2: u9 = 0, // 7-15
};
pub const Arm9PowerOptions = packed struct(u16) {
    lcd: bool = false, // 0
    main2d: bool = false, // 1
    matrix: bool = false, // 2
    core3d: bool = false, // 3
    _pad: u5 = 0, // 4-8
    sub2d: bool = false, // 9
    _pad2: u5 = 0, // 10-14
    swap_lcds: bool = false, // 15

    pub const All2D = @This(){ .lcd = true, .main2d = true, .sub2d = true };
    pub const All = @This(){ .lcd = true, .main2d = true, .sub2d = true, .core3d = true, .matrix = true };
};

// assumes this is run on the Arm9 processor
pub inline fn powerOnArm9(hardware: Arm9PowerOptions) void {
    REG_POWERCNT.* |= @as(u16, @bitCast(hardware));
}
pub inline fn powerOnArm7(hardware: Arm7PowerOptions) void {
    external.powerOn(@as(u32, @as(u16, @bitCast(hardware))));
}

pub inline fn powerOffArm9(hardware: Arm9PowerOptions) void {
    REG_POWERCNT.* &= ~@as(u16, @bitCast(hardware));
}
pub inline fn powerOffArm7(hardware: Arm7PowerOptions) void {
    external.powerOff(@as(u32, @as(u16, @bitCast(hardware))));
}

pub inline fn lcdMainOnTop() void {
    REG_POWERCNT.* |= 1 << 15; // set swap_lcds
}
pub inline fn lcdMainOnBottom() void {
    REG_POWERCNT.* &= ~@as(u16, 1 << 15); // unset swap_lcds
}
