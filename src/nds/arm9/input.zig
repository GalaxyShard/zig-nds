// TODO: check if name needs to match (translate-c outputs struct_touchPosition)
pub const TouchPosition = extern struct {
    rawx: u16 = 0, //< Raw x value from the A2D
    rawy: u16 = 0, //< Raw y value from the A2D
    px: u16 = 0, //< Processes pixel X value
    py: u16 = 0, //< Processes pixel Y value
    z1: u16 = 0, //< Raw cross panel resistance
    z2: u16 = 0, //< Raw cross panel resistance
};

pub const KeyFlags = packed struct(u32) {
    a: bool, //< Keypad A button.
    b: bool, //< Keypad B button.
    select: bool, //< Keypad SELECT button.
    start: bool, //< Keypad START button.
    right: bool, //< Keypad RIGHT button.
    left: bool, //< Keypad LEFT button.
    up: bool, //< Keypad UP button.
    down: bool, //< Keypad DOWN button.
    r: bool, //< Right shoulder button.
    l: bool, //< Left shoulder button.
    x: bool, //< Keypad X button.
    y: bool, //< Keypad Y button.
    touch: bool, //< Touchscreen pendown.
    lid: bool, //< Lid state.
    debug: bool, //< Debug button.
    _pad: u17,
};

const external = struct {
    extern fn keysCurrent() u32;
    extern fn keysHeld() u32;
    extern fn keysDown() u32;
    extern fn keysDownRepeat() u32;
    extern fn keysUp() u32;
};

pub extern fn scanKeys() void;
pub inline fn keysCurrent() KeyFlags {
    return @bitCast(external.keysCurrent());
}
pub inline fn keysHeld() KeyFlags {
    return @bitCast(external.keysHeld());
}
pub inline fn keysDown() KeyFlags {
    return @bitCast(external.keysDown());
}
pub inline fn keysDownRepeat() KeyFlags {
    return @bitCast(external.keysDownRepeat());
}
pub extern fn keysSetRepeat(setDelay: u8, setRepeat: u8) void;
pub inline fn keysUp() KeyFlags {
    return @bitCast(external.keysUp());
}
pub extern fn touchRead(data: *TouchPosition) void;
