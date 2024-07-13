
pub const GetHeaderCallback = ?*const fn ([*c]u8, [*c]u16, u32) callconv(.C) c_int;
pub const GetResultCallback = ?*const fn ([*c]u8) callconv(.C) c_int;
pub const GetByteCallback = ?*const fn ([*c]u8) callconv(.C) u8;
pub const GetHalfWordCallback = ?*const fn ([*c]u16) callconv(.C) u16;
pub const GetWordCallback = ?*const fn ([*c]u32) callconv(.C) u32;

pub const UnpackStruct = extern struct {
    sourceSize: u16 align(1) = 0,
    sourceWidth: u8 align(1) = 0,
    destWidth: u8 align(1) = 0,
    dataOffset: u32 align(1) = 0,
};
pub const DecompressionStream = extern struct {
    getSize: GetHeaderCallback align(1) = null,
    getResult: GetResultCallback align(1) = null,
    readByte: GetByteCallback align(1) = null,
    readHalfWord: GetHalfWordCallback align(1) = null,
    readWord: GetWordCallback align(1) = null,
};
pub extern fn swiSoftReset() noreturn;
pub extern fn swiDelay(duration: u32) void;

pub extern fn swiDivide(numerator: c_int, divisor: c_int) c_int;
pub extern fn swiRemainder(numerator: c_int, divisor: c_int) c_int;
pub extern fn swiDivMod(numerator: c_int, divisor: c_int, result: *c_int, remainder: *c_int) void;

pub extern fn swiCopy(source: *const anyopaque, dest: *anyopaque, flags: c_int) void;
pub extern fn swiFastCopy(source: *const anyopaque, dest: *anyopaque, flags: c_int) void;

pub extern fn swiSqrt(value: c_int) c_int;
pub extern fn swiCRC16(crc: u16, data: ?*const anyopaque, size: u32) u16;
pub extern fn swiIsDebugger() c_int;
pub extern fn swiUnpackBits(source: *const anyopaque, destination: *anyopaque, params: [*c]UnpackStruct) void;

pub extern fn swiDecompressLZSSWram(source: *const anyopaque, destination: *anyopaque) void;
pub extern fn swiDecompressLZSSVram(source: *const anyopaque, destination: *anyopaque, toGetSize: u32, stream: [*c]DecompressionStream) c_int;
pub extern fn swiDecompressLZSSVramNTR(source: *const anyopaque, destination: *anyopaque, toGetSize: u32, stream: [*c]DecompressionStream) c_int;
pub extern fn swiDecompressLZSSVramTWL(source: *const anyopaque, destination: *anyopaque, toGetSize: u32, stream: [*c]DecompressionStream) c_int;
pub extern fn swiDecompressHuffman(source: *const anyopaque, destination: *anyopaque, toGetSize: u32, stream: [*c]DecompressionStream) c_int;
pub extern fn swiDecompressRLEWram(source: *const anyopaque, destination: *anyopaque) void;
pub extern fn swiDecompressRLEVram(source: *const anyopaque, destination: *anyopaque, toGetSize: u32, stream: [*c]DecompressionStream) c_int;
