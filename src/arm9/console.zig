const std = @import("std");
const background = @import("background.zig");


const external = struct {
    extern fn consoleInit(console: [*c]PrintConsole, layer: c_int, @"type": c_int, size: c_int, mapBase: c_int, tileBase: c_int, mainDisplay: bool, loadGraphics: bool) [*c]PrintConsole;

};

pub const ConsolePrint = ?*const fn (?*anyopaque, u8) callconv(.C) bool;

pub const ConsoleFont = extern struct {
    gfx: [*c]u16,
    pal: [*c]u16,
    numColors: u16,
    bpp: u8,
    asciiOffset: u16,
    numChars: u16,
    convertSingleColor: bool,
};

pub const PrintConsole = extern struct {
    font: ConsoleFont,
    fontBgMap: [*c]u16,
    fontBgGfx: [*c]u16,
    mapBase: u8,
    gfxBase: u8,
    bgLayer: u8,
    bgId: c_int,
    cursorX: c_int,
    cursorY: c_int,
    prevCursorX: c_int,
    prevCursorY: c_int,
    consoleWidth: c_int,
    consoleHeight: c_int,
    windowX: c_int,
    windowY: c_int,
    windowWidth: c_int,
    windowHeight: c_int,
    tabSize: c_int,
    fontCharOffset: u16,
    fontCurPal: u16,
    PrintChar: ConsolePrint,
    consoleInitialised: bool,
    loadGraphics: bool,
};

pub inline fn consoleInit(console: ?*PrintConsole, layer: c_int, t: background.BgType, size: background.BgSize, map_base: c_int, tile_base: c_int, main_display: bool, load_graphics: bool) *PrintConsole {
    return external.consoleInit(console, layer, @intFromEnum(t), @intFromEnum(size), map_base, tile_base, main_display, load_graphics);
}
pub extern fn consoleDemoInit() *PrintConsole;
