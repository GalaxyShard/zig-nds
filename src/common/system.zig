
pub const REG_POWERCNT: *volatile u16 = @ptrFromInt(0x4000304);

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
