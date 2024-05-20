pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = i8;
pub const __uint_least8_t = u8;
pub const __int_least16_t = c_short;
pub const __uint_least16_t = c_ushort;
pub const __int_least32_t = c_int;
pub const __uint_least32_t = c_uint;
pub const __int_least64_t = c_long;
pub const __uint_least64_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __intptr_t = c_long;
pub const __uintptr_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const int_least8_t = __int_least8_t;
pub const uint_least8_t = __uint_least8_t;
pub const int_least16_t = __int_least16_t;
pub const uint_least16_t = __uint_least16_t;
pub const int_least32_t = __int_least32_t;
pub const uint_least32_t = __uint_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const int_fast16_t = c_short;
pub const uint_fast16_t = c_ushort;
pub const int_fast32_t = c_int;
pub const uint_fast32_t = c_uint;
pub const int_fast64_t = c_long;
pub const uint_fast64_t = c_ulong;
pub const uint8 = u8;
pub const uint16 = u16;
pub const uint32 = u32;
pub const uint64 = u64;
pub const int8 = i8;
pub const int16 = i16;
pub const int32 = i32;
pub const int64 = i64;
pub const float32 = f32;
pub const float64 = f64;
pub const vuint8 = u8;
pub const vuint16 = u16;
pub const vuint32 = u32;
pub const vuint64 = u64;
pub const vint8 = i8;
pub const vint16 = i16;
pub const vint32 = i32;
pub const vint64 = i64;
pub const vfloat32 = float32;
pub const vfloat64 = float64;
pub const byte = u8;
pub const @"u8" = u8;
pub const @"u16" = u16;
pub const @"u32" = u32;
pub const @"u64" = u64;
pub const s8 = i8;
pub const s16 = i16;
pub const s32 = i32;
pub const s64 = i64;
pub const vu8 = @"u8";
pub const vu16 = @"u16";
pub const vu32 = @"u32";
pub const vu64 = @"u64";
pub const vs8 = s8;
pub const vs16 = s16;
pub const vs32 = s32;
pub const vs64 = s64;
pub const sec_t = u32;
pub const VoidFn = ?*const fn () callconv(.C) void;
pub const IntFn = ?*const fn () callconv(.C) void;
pub const fp = ?*const fn () callconv(.C) void;
pub const getHeaderCallback = ?*const fn ([*c]@"u8", [*c]@"u16", @"u32") callconv(.C) c_int;
pub const getResultCallback = ?*const fn ([*c]@"u8") callconv(.C) c_int;
pub const getByteCallback = ?*const fn ([*c]@"u8") callconv(.C) @"u8";
pub const struct_DecompressionStream = extern struct {
    getSize: getHeaderCallback align(1) = @import("std").mem.zeroes(getHeaderCallback),
    getResult: getResultCallback align(1) = @import("std").mem.zeroes(getResultCallback),
    readByte: getByteCallback align(1) = @import("std").mem.zeroes(getByteCallback),
};
pub const TDecompressionStream = struct_DecompressionStream;
pub const struct_UnpackStruct = extern struct {
    sourceSize: uint16 align(1) = @import("std").mem.zeroes(uint16),
    sourceWidth: uint8 align(1) = @import("std").mem.zeroes(uint8),
    destWidth: uint8 align(1) = @import("std").mem.zeroes(uint8),
    dataOffset: uint32 align(1) = @import("std").mem.zeroes(uint32),
};
pub const TUnpackStruct = struct_UnpackStruct;
pub const PUnpackStruct = [*c]struct_UnpackStruct;
pub extern fn swiSoftReset() void;
pub extern fn swiDelay(duration: uint32) void;
pub extern fn swiDivide(numerator: c_int, divisor: c_int) c_int;
pub extern fn swiRemainder(numerator: c_int, divisor: c_int) c_int;
pub extern fn swiDivMod(numerator: c_int, divisor: c_int, result: [*c]c_int, remainder: [*c]c_int) void;
pub extern fn swiCopy(source: ?*const anyopaque, dest: ?*anyopaque, flags: c_int) void;
pub extern fn swiFastCopy(source: ?*const anyopaque, dest: ?*anyopaque, flags: c_int) void;
pub extern fn swiSqrt(value: c_int) c_int;
pub extern fn swiCRC16(crc: uint16, data: ?*anyopaque, size: uint32) uint16;
pub extern fn swiIsDebugger() c_int;
pub extern fn swiUnpackBits(source: [*c]uint8, destination: [*c]uint32, params: PUnpackStruct) void;
pub extern fn swiDecompressLZSSWram(source: ?*anyopaque, destination: ?*anyopaque) void;
pub extern fn swiDecompressLZSSVram(source: ?*anyopaque, destination: ?*anyopaque, toGetSize: uint32, stream: [*c]TDecompressionStream) c_int;
pub extern fn swiDecompressLZSSVramNTR(source: ?*anyopaque, destination: ?*anyopaque, toGetSize: uint32, stream: [*c]TDecompressionStream) c_int;
pub extern fn swiDecompressLZSSVramTWL(source: ?*anyopaque, destination: ?*anyopaque, toGetSize: uint32, stream: [*c]TDecompressionStream) c_int;
pub extern fn swiDecompressHuffman(source: ?*anyopaque, destination: ?*anyopaque, toGetSize: uint32, stream: [*c]TDecompressionStream) c_int;
pub extern fn swiDecompressRLEWram(source: ?*anyopaque, destination: ?*anyopaque) void;
pub extern fn swiDecompressRLEVram(source: ?*anyopaque, destination: ?*anyopaque, toGetSize: uint32, stream: [*c]TDecompressionStream) c_int;
pub extern fn swiWaitForIRQ() void;
pub extern fn swiSetHaltCR(data: uint32) void;
pub extern fn swiDecodeDelta8(source: ?*anyopaque, destination: ?*anyopaque) void;
pub extern fn swiDecodeDelta16(source: ?*anyopaque, destination: ?*anyopaque) void;
pub extern fn enableSlot1(...) void;
pub extern fn disableSlot1(...) void;
pub extern fn cardWriteCommand(command: [*c]const @"u8") void;
pub extern fn cardPolledTransfer(flags: @"u32", destination: [*c]@"u32", length: @"u32", command: [*c]const @"u8") void;
pub extern fn cardStartTransfer(command: [*c]const @"u8", destination: [*c]@"u32", channel: c_int, flags: @"u32") void;
pub extern fn cardWriteAndRead(command: [*c]const @"u8", flags: @"u32") uint32;
pub extern fn cardParamCommand(command: @"u8", parameter: @"u32", flags: @"u32", destination: [*c]@"u32", length: @"u32") void;
pub extern fn cardReadHeader(header: [*c]@"u8") void;
pub extern fn cardReadID(flags: @"u32") @"u32";
pub extern fn cardReset(...) void;
pub fn eepromWaitBusy() callconv(.C) void {
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109280))).*))) & (@as(c_int, 1) << @intCast(7))) != 0) {}
}
pub extern fn cardReadEeprom(address: @"u32", data: [*c]@"u8", length: @"u32", addrtype: @"u32") void;
pub extern fn cardWriteEeprom(address: @"u32", data: [*c]@"u8", length: @"u32", addrtype: @"u32") void;
pub extern fn cardEepromReadID(...) @"u32";
pub extern fn cardEepromCommand(command: @"u8") @"u8";
pub extern fn cardEepromGetType() c_int;
pub extern fn cardEepromGetSize(...) @"u32";
pub extern fn cardEepromChipErase() void;
pub extern fn cardEepromSectorErase(address: @"u32") void;
pub extern fn nocashWrite(message: [*c]const u8, len: c_int) void;
pub extern fn nocashMessage(message: [*c]const u8) void;
pub fn dmaCopyWords(arg_channel: uint8, arg_src: ?*const anyopaque, arg_dest: ?*anyopaque, arg_size: uint32) callconv(.C) void {
    var channel = arg_channel;
    _ = &channel;
    var src = arg_src;
    _ = &src;
    var dest = arg_dest;
    _ = &dest;
    var size = arg_size;
    _ = &size;
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109040) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(src)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109044) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(dest)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @bitCast(((@as(c_int, 1) << @intCast(@as(c_int, 31))) | (@as(c_int, 1) << @intCast(@as(c_int, 26)))) | @as(c_int, 0))) | (size >> @intCast(2));
    while ((@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* & @as(u32, @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 31))))) != 0) {}
}
pub fn dmaCopyHalfWords(arg_channel: uint8, arg_src: ?*const anyopaque, arg_dest: ?*anyopaque, arg_size: uint32) callconv(.C) void {
    var channel = arg_channel;
    _ = &channel;
    var src = arg_src;
    _ = &src;
    var dest = arg_dest;
    _ = &dest;
    var size = arg_size;
    _ = &size;
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109040) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(src)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109044) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(dest)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @bitCast(((@as(c_int, 1) << @intCast(@as(c_int, 31))) | @as(c_int, 0)) | @as(c_int, 0))) | (size >> @intCast(1));
    while ((@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* & @as(u32, @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 31))))) != 0) {}
}
pub fn dmaCopy(arg_source: ?*const anyopaque, arg_dest: ?*anyopaque, arg_size: uint32) callconv(.C) void {
    var source = arg_source;
    _ = &source;
    var dest = arg_dest;
    _ = &dest;
    var size = arg_size;
    _ = &size;
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109040) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(source)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109044) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(dest)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @bitCast(((@as(c_int, 1) << @intCast(@as(c_int, 31))) | @as(c_int, 0)) | @as(c_int, 0))) | (size >> @intCast(1));
    while ((@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 3) * @as(c_int, 12)))).* & @as(u32, @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 31))))) != 0) {}
}
pub fn dmaCopyWordsAsynch(arg_channel: uint8, arg_src: ?*const anyopaque, arg_dest: ?*anyopaque, arg_size: uint32) callconv(.C) void {
    var channel = arg_channel;
    _ = &channel;
    var src = arg_src;
    _ = &src;
    var dest = arg_dest;
    _ = &dest;
    var size = arg_size;
    _ = &size;
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109040) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(src)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109044) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(dest)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @bitCast(((@as(c_int, 1) << @intCast(@as(c_int, 31))) | (@as(c_int, 1) << @intCast(@as(c_int, 26)))) | @as(c_int, 0))) | (size >> @intCast(2));
}
pub fn dmaCopyHalfWordsAsynch(arg_channel: uint8, arg_src: ?*const anyopaque, arg_dest: ?*anyopaque, arg_size: uint32) callconv(.C) void {
    var channel = arg_channel;
    _ = &channel;
    var src = arg_src;
    _ = &src;
    var dest = arg_dest;
    _ = &dest;
    var size = arg_size;
    _ = &size;
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109040) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(src)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109044) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(dest)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* = @as(uint32, @bitCast(((@as(c_int, 1) << @intCast(@as(c_int, 31))) | @as(c_int, 0)) | @as(c_int, 0))) | (size >> @intCast(1));
}
pub fn dmaCopyAsynch(arg_source: ?*const anyopaque, arg_dest: ?*anyopaque, arg_size: uint32) callconv(.C) void {
    var source = arg_source;
    _ = &source;
    var dest = arg_dest;
    _ = &dest;
    var size = arg_size;
    _ = &size;
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109040) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(source)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109044) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(dest)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @bitCast(((@as(c_int, 1) << @intCast(@as(c_int, 31))) | @as(c_int, 0)) | @as(c_int, 0))) | (size >> @intCast(1));
}
pub fn dmaFillWords(arg_value: @"u32", arg_dest: ?*anyopaque, arg_size: uint32) callconv(.C) void {
    var value = arg_value;
    _ = &value;
    var dest = arg_dest;
    _ = &dest;
    var size = arg_size;
    _ = &size;
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109088) + (@as(c_int, 3) * @as(c_int, 4)))).* = value;
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109040) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(&@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109088) + (@as(c_int, 3) * @as(c_int, 4)))).*)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109044) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(dest)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @bitCast((@as(c_int, 1) << @intCast(@as(c_int, 24))) | (((@as(c_int, 1) << @intCast(@as(c_int, 31))) | (@as(c_int, 1) << @intCast(@as(c_int, 26)))) | @as(c_int, 0)))) | (size >> @intCast(2));
    while ((@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 3) * @as(c_int, 12)))).* & @as(u32, @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 31))))) != 0) {}
}
pub fn dmaFillHalfWords(arg_value: @"u16", arg_dest: ?*anyopaque, arg_size: uint32) callconv(.C) void {
    var value = arg_value;
    _ = &value;
    var dest = arg_dest;
    _ = &dest;
    var size = arg_size;
    _ = &size;
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109088) + (@as(c_int, 3) * @as(c_int, 4)))).* = @as(uint32, @bitCast(@as(c_uint, value)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109040) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(&@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109088) + (@as(c_int, 3) * @as(c_int, 4)))).*)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109044) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @intCast(@intFromPtr(dest)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 3) * @as(c_int, 12)))).* = @as(uint32, @bitCast((@as(c_int, 1) << @intCast(@as(c_int, 24))) | (((@as(c_int, 1) << @intCast(@as(c_int, 31))) | @as(c_int, 0)) | @as(c_int, 0)))) | (size >> @intCast(1));
    while ((@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 3) * @as(c_int, 12)))).* & @as(u32, @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 31))))) != 0) {}
}
pub fn dmaBusy(arg_channel: uint8) callconv(.C) c_int {
    var channel = arg_channel;
    _ = &channel;
    return @as(c_int, @bitCast((@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, @bitCast(@as(c_uint, channel))) * @as(c_int, 12)))).* & @as(u32, @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 31))))) >> @intCast(31)));
}
pub const IRQ_VBLANK: c_int = 1;
pub const IRQ_HBLANK: c_int = 2;
pub const IRQ_VCOUNT: c_int = 4;
pub const IRQ_TIMER0: c_int = 8;
pub const IRQ_TIMER1: c_int = 16;
pub const IRQ_TIMER2: c_int = 32;
pub const IRQ_TIMER3: c_int = 64;
pub const IRQ_NETWORK: c_int = 128;
pub const IRQ_DMA0: c_int = 256;
pub const IRQ_DMA1: c_int = 512;
pub const IRQ_DMA2: c_int = 1024;
pub const IRQ_DMA3: c_int = 2048;
pub const IRQ_KEYS: c_int = 4096;
pub const IRQ_CART: c_int = 8192;
pub const IRQ_IPC_SYNC: c_int = 65536;
pub const IRQ_FIFO_EMPTY: c_int = 131072;
pub const IRQ_FIFO_NOT_EMPTY: c_int = 262144;
pub const IRQ_CARD: c_int = 524288;
pub const IRQ_CARD_LINE: c_int = 1048576;
pub const IRQ_GEOMETRY_FIFO: c_int = 2097152;
pub const IRQ_LID: c_int = 4194304;
pub const IRQ_SPI: c_int = 8388608;
pub const IRQ_WIFI: c_int = 16777216;
pub const IRQ_ALL: c_int = -1;
pub const enum_IRQ_MASKS = c_int;
pub const IRQ_MASK = enum_IRQ_MASKS;
pub const IRQ_I2C: c_int = 64;
pub const IRQ_SDMMC: c_int = 256;
pub const enum_IRQ_MASKSAUX = c_uint;
pub const IME_DISABLE: c_int = 0;
pub const IME_ENABLE: c_int = 1;
pub const enum_IME_VALUE = c_uint;
pub const __irq_vector: [*c]VoidFn = @extern([*c]VoidFn, .{
    .name = "__irq_vector",
});
pub const __irq_flags: [*c]volatile vuint32 = @extern([*c]volatile vuint32, .{
    .name = "__irq_flags",
});
pub const __irq_flagsaux: [*c]volatile vuint32 = @extern([*c]volatile vuint32, .{
    .name = "__irq_flagsaux",
});
pub const struct_IntTable = extern struct {
    handler: IntFn = @import("std").mem.zeroes(IntFn),
    mask: @"u32" = @import("std").mem.zeroes(@"u32"),
};
pub extern fn irqInit(...) void;
pub extern fn irqSet(irq: @"u32", handler: VoidFn) void;
pub extern fn irqSetAUX(irq: @"u32", handler: VoidFn) void;
pub extern fn irqClear(irq: @"u32") void;
pub extern fn irqClearAUX(irq: @"u32") void;
pub extern fn irqInitHandler(handler: VoidFn) void;
pub extern fn irqEnable(irq: @"u32") void;
pub extern fn irqEnableAUX(irq: @"u32") void;
pub extern fn irqDisable(irq: @"u32") void;
pub extern fn irqDisableAUX(irq: @"u32") void;
pub extern fn swiIntrWait(waitForSet: @"u32", flags: uint32) void;
pub extern fn swiWaitForVBlank() void;
pub extern fn setPowerButtonCB(CB: VoidFn) VoidFn;
pub fn enterCriticalSection() callconv(.C) c_int {
    var oldIME: c_int = @as(c_int, @bitCast(@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109384))).*));
    _ = &oldIME;
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109384))).* = 0;
    return oldIME;
}
pub fn leaveCriticalSection(arg_oldIME: c_int) callconv(.C) void {
    var oldIME = arg_oldIME;
    _ = &oldIME;
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109384))).* = @as(u32, @bitCast(oldIME));
}
pub const IPC_SYNC_IRQ_ENABLE: c_int = 16384;
pub const IPC_SYNC_IRQ_REQUEST: c_int = 8192;
pub const enum_IPC_SYNC_BITS = c_uint;
pub fn IPC_SendSync(arg_sync_1: c_uint) callconv(.C) void {
    var sync_1 = arg_sync_1;
    _ = &sync_1;
    @as([*c]volatile vuint16, @ptrFromInt(@as(c_int, 67109248))).* = @as(u16, @bitCast(@as(c_ushort, @truncate((@as(c_uint, @bitCast(@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vuint16, @ptrFromInt(@as(c_int, 67109248))).*))) & @as(c_int, 61695))) | ((sync_1 & @as(c_uint, @bitCast(@as(c_int, 15)))) << @intCast(8))) | @as(c_uint, @bitCast(IPC_SYNC_IRQ_REQUEST))))));
}
pub fn IPC_GetSync() callconv(.C) c_int {
    return @as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vuint16, @ptrFromInt(@as(c_int, 67109248))).*))) & @as(c_int, 15);
}
pub const IPC_FIFO_SEND_EMPTY: c_int = 1;
pub const IPC_FIFO_SEND_FULL: c_int = 2;
pub const IPC_FIFO_SEND_IRQ: c_int = 4;
pub const IPC_FIFO_SEND_CLEAR: c_int = 8;
pub const IPC_FIFO_RECV_EMPTY: c_int = 256;
pub const IPC_FIFO_RECV_FULL: c_int = 512;
pub const IPC_FIFO_RECV_IRQ: c_int = 1024;
pub const IPC_FIFO_ERROR: c_int = 16384;
pub const IPC_FIFO_ENABLE: c_int = 32768;
pub const enum_IPC_CONTROL_BITS = c_uint;
pub extern fn __assert([*c]const u8, c_int, [*c]const u8) noreturn;
pub extern fn __assert_func([*c]const u8, c_int, [*c]const u8, [*c]const u8) noreturn;
pub const struct_sGBAHeader = extern struct {
    entryPoint: @"u32" = @import("std").mem.zeroes(@"u32"),
    logo: [156]@"u8" = @import("std").mem.zeroes([156]@"u8"),
    title: [12]u8 = @import("std").mem.zeroes([12]u8),
    gamecode: [4]u8 = @import("std").mem.zeroes([4]u8),
    makercode: @"u16" = @import("std").mem.zeroes(@"u16"),
    is96h: @"u8" = @import("std").mem.zeroes(@"u8"),
    unitcode: @"u8" = @import("std").mem.zeroes(@"u8"),
    devicecode: @"u8" = @import("std").mem.zeroes(@"u8"),
    unused: [7]@"u8" = @import("std").mem.zeroes([7]@"u8"),
    version: @"u8" = @import("std").mem.zeroes(@"u8"),
    complement: @"u8" = @import("std").mem.zeroes(@"u8"),
    checksum: @"u16" = @import("std").mem.zeroes(@"u16"),
};
pub const tGBAHeader = struct_sGBAHeader;
pub const struct_sNDSHeader = extern struct {
    gameTitle: [12]u8 = @import("std").mem.zeroes([12]u8),
    gameCode: [4]u8 = @import("std").mem.zeroes([4]u8),
    makercode: [2]u8 = @import("std").mem.zeroes([2]u8),
    unitCode: @"u8" = @import("std").mem.zeroes(@"u8"),
    deviceType: @"u8" = @import("std").mem.zeroes(@"u8"),
    deviceSize: @"u8" = @import("std").mem.zeroes(@"u8"),
    reserved1: [9]@"u8" = @import("std").mem.zeroes([9]@"u8"),
    romversion: @"u8" = @import("std").mem.zeroes(@"u8"),
    flags: @"u8" = @import("std").mem.zeroes(@"u8"),
    arm9romOffset: @"u32" = @import("std").mem.zeroes(@"u32"),
    arm9executeAddress: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    arm9destination: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    arm9binarySize: @"u32" = @import("std").mem.zeroes(@"u32"),
    arm7romOffset: @"u32" = @import("std").mem.zeroes(@"u32"),
    arm7executeAddress: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    arm7destination: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    arm7binarySize: @"u32" = @import("std").mem.zeroes(@"u32"),
    filenameOffset: @"u32" = @import("std").mem.zeroes(@"u32"),
    filenameSize: @"u32" = @import("std").mem.zeroes(@"u32"),
    fatOffset: @"u32" = @import("std").mem.zeroes(@"u32"),
    fatSize: @"u32" = @import("std").mem.zeroes(@"u32"),
    arm9overlaySource: @"u32" = @import("std").mem.zeroes(@"u32"),
    arm9overlaySize: @"u32" = @import("std").mem.zeroes(@"u32"),
    arm7overlaySource: @"u32" = @import("std").mem.zeroes(@"u32"),
    arm7overlaySize: @"u32" = @import("std").mem.zeroes(@"u32"),
    cardControl13: @"u32" = @import("std").mem.zeroes(@"u32"),
    cardControlBF: @"u32" = @import("std").mem.zeroes(@"u32"),
    bannerOffset: @"u32" = @import("std").mem.zeroes(@"u32"),
    secureCRC16: @"u16" = @import("std").mem.zeroes(@"u16"),
    readTimeout: @"u16" = @import("std").mem.zeroes(@"u16"),
    unknownRAM1: @"u32" = @import("std").mem.zeroes(@"u32"),
    unknownRAM2: @"u32" = @import("std").mem.zeroes(@"u32"),
    bfPrime1: @"u32" = @import("std").mem.zeroes(@"u32"),
    bfPrime2: @"u32" = @import("std").mem.zeroes(@"u32"),
    romSize: @"u32" = @import("std").mem.zeroes(@"u32"),
    headerSize: @"u32" = @import("std").mem.zeroes(@"u32"),
    zeros88: [14]@"u32" = @import("std").mem.zeroes([14]@"u32"),
    gbaLogo: [156]@"u8" = @import("std").mem.zeroes([156]@"u8"),
    logoCRC16: @"u16" = @import("std").mem.zeroes(@"u16"),
    headerCRC16: @"u16" = @import("std").mem.zeroes(@"u16"),
};
pub const tNDSHeader = struct_sNDSHeader;
pub const struct___DSiHeader = extern struct {
    ndshdr: tNDSHeader = @import("std").mem.zeroes(tNDSHeader),
    debugRomSource: @"u32" = @import("std").mem.zeroes(@"u32"),
    debugRomSize: @"u32" = @import("std").mem.zeroes(@"u32"),
    debugRomDestination: @"u32" = @import("std").mem.zeroes(@"u32"),
    offset_0x16C: @"u32" = @import("std").mem.zeroes(@"u32"),
    zero: [16]@"u8" = @import("std").mem.zeroes([16]@"u8"),
    global_mbk_setting: [5][4]@"u8" = @import("std").mem.zeroes([5][4]@"u8"),
    arm9_mbk_setting: [3]@"u32" = @import("std").mem.zeroes([3]@"u32"),
    arm7_mbk_setting: [3]@"u32" = @import("std").mem.zeroes([3]@"u32"),
    mbk9_wramcnt_setting: @"u32" = @import("std").mem.zeroes(@"u32"),
    region_flags: @"u32" = @import("std").mem.zeroes(@"u32"),
    access_control: @"u32" = @import("std").mem.zeroes(@"u32"),
    scfg_ext_mask: @"u32" = @import("std").mem.zeroes(@"u32"),
    offset_0x1BC: [3]@"u8" = @import("std").mem.zeroes([3]@"u8"),
    appflags: @"u8" = @import("std").mem.zeroes(@"u8"),
    arm9iromOffset: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    offset_0x1C4: @"u32" = @import("std").mem.zeroes(@"u32"),
    arm9idestination: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    arm9ibinarySize: @"u32" = @import("std").mem.zeroes(@"u32"),
    arm7iromOffset: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    offset_0x1D4: @"u32" = @import("std").mem.zeroes(@"u32"),
    arm7idestination: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    arm7ibinarySize: @"u32" = @import("std").mem.zeroes(@"u32"),
    digest_ntr_start: @"u32" = @import("std").mem.zeroes(@"u32"),
    digest_ntr_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    digest_twl_start: @"u32" = @import("std").mem.zeroes(@"u32"),
    digest_twl_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    sector_hashtable_start: @"u32" = @import("std").mem.zeroes(@"u32"),
    sector_hashtable_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    block_hashtable_start: @"u32" = @import("std").mem.zeroes(@"u32"),
    block_hashtable_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    digest_sector_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    digest_block_sectorcount: @"u32" = @import("std").mem.zeroes(@"u32"),
    banner_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    offset_0x20C: @"u32" = @import("std").mem.zeroes(@"u32"),
    total_rom_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    offset_0x214: @"u32" = @import("std").mem.zeroes(@"u32"),
    offset_0x218: @"u32" = @import("std").mem.zeroes(@"u32"),
    offset_0x21C: @"u32" = @import("std").mem.zeroes(@"u32"),
    modcrypt1_start: @"u32" = @import("std").mem.zeroes(@"u32"),
    modcrypt1_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    modcrypt2_start: @"u32" = @import("std").mem.zeroes(@"u32"),
    modcrypt2_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    tid_low: @"u32" = @import("std").mem.zeroes(@"u32"),
    tid_high: @"u32" = @import("std").mem.zeroes(@"u32"),
    public_sav_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    private_sav_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    reserved3: [176]@"u8" = @import("std").mem.zeroes([176]@"u8"),
    age_ratings: [16]@"u8" = @import("std").mem.zeroes([16]@"u8"),
    hmac_arm9: [20]@"u8" = @import("std").mem.zeroes([20]@"u8"),
    hmac_arm7: [20]@"u8" = @import("std").mem.zeroes([20]@"u8"),
    hmac_digest_master: [20]@"u8" = @import("std").mem.zeroes([20]@"u8"),
    hmac_icon_title: [20]@"u8" = @import("std").mem.zeroes([20]@"u8"),
    hmac_arm9i: [20]@"u8" = @import("std").mem.zeroes([20]@"u8"),
    hmac_arm7i: [20]@"u8" = @import("std").mem.zeroes([20]@"u8"),
    reserved4: [40]@"u8" = @import("std").mem.zeroes([40]@"u8"),
    hmac_arm9_no_secure: [20]@"u8" = @import("std").mem.zeroes([20]@"u8"),
    reserved5: [2636]@"u8" = @import("std").mem.zeroes([2636]@"u8"),
    debug_args: [384]@"u8" = @import("std").mem.zeroes([384]@"u8"),
    rsa_signature: [128]@"u8" = @import("std").mem.zeroes([128]@"u8"),
};
pub const tDSiHeader = struct___DSiHeader;
pub const struct_sNDSBanner = extern struct {
    version: @"u16" = @import("std").mem.zeroes(@"u16"),
    crc: @"u16" = @import("std").mem.zeroes(@"u16"),
    reserved: [28]@"u8" = @import("std").mem.zeroes([28]@"u8"),
    icon: [512]@"u8" = @import("std").mem.zeroes([512]@"u8"),
    palette: [16]@"u16" = @import("std").mem.zeroes([16]@"u16"),
    titles: [6][128]@"u16" = @import("std").mem.zeroes([6][128]@"u16"),
};
pub const tNDSBanner = struct_sNDSBanner;
pub fn sysSetCartOwner(arg_arm9: bool) callconv(.C) void {
    var arm9 = arg_arm9;
    _ = &arm9;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109380))).* = @as(@"u16", @bitCast(@as(c_short, @truncate((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109380))).*))) & ~(@as(c_int, 1) << @intCast(@as(c_int, 7)))) | (if (@as(c_int, @intFromBool(arm9)) != 0) @as(c_int, 0) else @as(c_int, 1) << @intCast(@as(c_int, 7)))))));
}
pub fn sysSetCardOwner(arg_arm9: bool) callconv(.C) void {
    var arm9 = arg_arm9;
    _ = &arm9;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109380))).* = @as(@"u16", @bitCast(@as(c_short, @truncate((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109380))).*))) & ~(@as(c_int, 1) << @intCast(@as(c_int, 11)))) | (if (@as(c_int, @intFromBool(arm9)) != 0) @as(c_int, 0) else @as(c_int, 1) << @intCast(@as(c_int, 11)))))));
}
pub fn sysSetBusOwners(arg_arm9rom: bool, arg_arm9card: bool) callconv(.C) void {
    var arm9rom = arg_arm9rom;
    _ = &arm9rom;
    var arm9card = arg_arm9card;
    _ = &arm9card;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109380))).* = @as(@"u16", @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109380))).*))) & ~((@as(c_int, 1) << @intCast(@as(c_int, 11))) | (@as(c_int, 1) << @intCast(@as(c_int, 7))))) | (if (@as(c_int, @intFromBool(arm9card)) != 0) @as(c_int, 0) else @as(c_int, 1) << @intCast(@as(c_int, 11)))) | (if (@as(c_int, @intFromBool(arm9rom)) != 0) @as(c_int, 0) else @as(c_int, 1) << @intCast(@as(c_int, 7)))))));
}
pub const DISP_IN_VBLANK: c_int = 1;
pub const DISP_IN_HBLANK: c_int = 2;
pub const DISP_YTRIGGERED: c_int = 4;
pub const DISP_VBLANK_IRQ: c_int = 8;
pub const DISP_HBLANK_IRQ: c_int = 16;
pub const DISP_YTRIGGER_IRQ: c_int = 32;
pub const DISP_BITS = c_uint;
pub fn SetYtrigger(arg_Yvalue: c_int) callconv(.C) void {
    var Yvalue = arg_Yvalue;
    _ = &Yvalue;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67108868))).* = @as(@"u16", @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67108868))).*))) & @as(c_int, 127)) | (Yvalue << @intCast(8))) | ((Yvalue & @as(c_int, 256)) >> @intCast(1))))));
}
pub const PM_SOUND_AMP: c_int = 1;
pub const PM_SOUND_MUTE: c_int = 2;
pub const PM_BACKLIGHT_BOTTOM: c_int = 4;
pub const PM_BACKLIGHT_TOP: c_int = 8;
pub const PM_SYSTEM_PWR: c_int = 64;
pub const POWER_LCD: c_int = 65537;
pub const POWER_2D_A: c_int = 65538;
pub const POWER_MATRIX: c_int = 65540;
pub const POWER_3D_CORE: c_int = 65544;
pub const POWER_2D_B: c_int = 66048;
pub const POWER_SWAP_LCDS: c_int = 98304;
pub const POWER_ALL_2D: c_int = 66051;
pub const POWER_ALL: c_int = 66063;
pub const PM_Bits = c_uint;
pub extern fn systemSleep() void;
pub extern fn ledBlink(bm: c_int) void;
extern var __dsimode: bool;
pub fn isDSiMode() callconv(.C) bool {
    return __dsimode;
}
pub extern fn powerOn(bits: c_int) void;
pub extern fn powerOff(bits: c_int) void;
pub extern fn systemMsgHandler(bytes: c_int, user_data: ?*anyopaque) void;
pub extern fn systemValueHandler(value: @"u32", data: ?*anyopaque) void;
pub fn lcdSwap() callconv(.C) void {
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109636))).* ^= @as(vu16, @bitCast(@as(c_short, @truncate(POWER_SWAP_LCDS))));
}
pub fn lcdMainOnTop() callconv(.C) void {
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109636))).* |= @as(vu16, @bitCast(@as(c_short, @truncate(POWER_SWAP_LCDS))));
}
pub fn lcdMainOnBottom() callconv(.C) void {
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109636))).* &= @as(vu16, @bitCast(@as(c_short, @truncate(~POWER_SWAP_LCDS))));
}
pub fn systemShutDown() callconv(.C) void {
    powerOn(PM_SYSTEM_PWR);
}
pub extern fn readFirmware(address: @"u32", buffer: ?*anyopaque, length: @"u32") void;
pub extern fn writeFirmware(address: @"u32", buffer: ?*anyopaque, length: @"u32") c_int;
pub extern fn getBatteryLevel(...) @"u32";
pub extern fn setVectorBase(highVector: c_int) void;
pub const struct_sysVectors_t = extern struct {
    reset: VoidFn = @import("std").mem.zeroes(VoidFn),
    undefined: VoidFn = @import("std").mem.zeroes(VoidFn),
    swi: VoidFn = @import("std").mem.zeroes(VoidFn),
    prefetch_abort: VoidFn = @import("std").mem.zeroes(VoidFn),
    data_abort: VoidFn = @import("std").mem.zeroes(VoidFn),
    fiq: VoidFn = @import("std").mem.zeroes(VoidFn),
};
pub const sysVectors = struct_sysVectors_t;
pub extern var SystemVectors: sysVectors;
pub extern fn setSDcallback(callback: ?*const fn (c_int) callconv(.C) void) void;
pub extern fn setCpuClock(speed: bool) bool;
pub extern fn getHeapStart(...) [*c]@"u8";
pub extern fn getHeapEnd(...) [*c]@"u8";
pub extern fn getHeapLimit(...) [*c]@"u8";
pub const BACKLIGHT_LOW: c_int = 0;
pub const BACKLIGHT_MED: c_int = 1;
pub const BACKLIGHT_HIGH: c_int = 2;
pub const BACKLIGHT_MAX: c_int = 3;
pub const BACKLIGHT_LEVELS = c_uint; // /opt/devkitpro/libnds/include/nds/system.h:371:16: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_1 = opaque {};
pub const struct_tPERSONAL_DATA = extern struct {
    RESERVED0: [2]@"u8" align(1) = @import("std").mem.zeroes([2]@"u8"),
    theme: @"u8" align(1) = @import("std").mem.zeroes(@"u8"),
    birthMonth: @"u8" align(1) = @import("std").mem.zeroes(@"u8"),
    birthDay: @"u8" align(1) = @import("std").mem.zeroes(@"u8"),
    RESERVED1: [1]@"u8" align(1) = @import("std").mem.zeroes([1]@"u8"),
    name: [10]s16 align(1) = @import("std").mem.zeroes([10]s16),
    nameLen: @"u16" align(1) = @import("std").mem.zeroes(@"u16"),
    message: [26]s16 align(1) = @import("std").mem.zeroes([26]s16),
    messageLen: @"u16" align(1) = @import("std").mem.zeroes(@"u16"),
    alarmHour: @"u8" align(1) = @import("std").mem.zeroes(@"u8"),
    alarmMinute: @"u8" align(1) = @import("std").mem.zeroes(@"u8"),
    RESERVED2: [4]@"u8" align(1) = @import("std").mem.zeroes([4]@"u8"),
    calX1: @"u16" align(1) = @import("std").mem.zeroes(@"u16"),
    calY1: @"u16" align(1) = @import("std").mem.zeroes(@"u16"),
    calX1px: @"u8" align(1) = @import("std").mem.zeroes(@"u8"),
    calY1px: @"u8" align(1) = @import("std").mem.zeroes(@"u8"),
    calX2: @"u16" align(1) = @import("std").mem.zeroes(@"u16"),
    calY2: @"u16" align(1) = @import("std").mem.zeroes(@"u16"),
    calX2px: @"u8" align(1) = @import("std").mem.zeroes(@"u8"),
    calY2px: @"u8" align(1) = @import("std").mem.zeroes(@"u8"),
    unnamed_0: struct_unnamed_1 align(1) = @import("std").mem.zeroes(struct_unnamed_1),
    RESERVED3: @"u16" align(1) = @import("std").mem.zeroes(@"u16"),
    rtcOffset: @"u32" align(1) = @import("std").mem.zeroes(@"u32"),
    RESERVED4: @"u32" align(1) = @import("std").mem.zeroes(@"u32"),
};
pub const PERSONAL_DATA = struct_tPERSONAL_DATA;
pub const RTCtime = extern struct {
    year: @"u8" = @import("std").mem.zeroes(@"u8"),
    month: @"u8" = @import("std").mem.zeroes(@"u8"),
    day: @"u8" = @import("std").mem.zeroes(@"u8"),
    weekday: @"u8" = @import("std").mem.zeroes(@"u8"),
    hours: @"u8" = @import("std").mem.zeroes(@"u8"),
    minutes: @"u8" = @import("std").mem.zeroes(@"u8"),
    seconds: @"u8" = @import("std").mem.zeroes(@"u8"),
};
pub const struct___argv = extern struct {
    argvMagic: c_int = @import("std").mem.zeroes(c_int),
    commandLine: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    length: c_int = @import("std").mem.zeroes(c_int),
    argc: c_int = @import("std").mem.zeroes(c_int),
    argv: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    dummy: c_int = @import("std").mem.zeroes(c_int),
    host: @"u32" = @import("std").mem.zeroes(@"u32"),
};
pub const struct___bootstub = extern struct {
    bootsig: @"u64" = @import("std").mem.zeroes(@"u64"),
    arm9reboot: VoidFn = @import("std").mem.zeroes(VoidFn),
    arm7reboot: VoidFn = @import("std").mem.zeroes(VoidFn),
    bootsize: @"u32" = @import("std").mem.zeroes(@"u32"),
};
pub extern fn memCached(address: ?*anyopaque) ?*anyopaque;
pub extern fn memUncached(address: ?*anyopaque) ?*anyopaque;
pub extern fn resetARM7(address: @"u32") void;
pub const ClockDivider_1: c_int = 0;
pub const ClockDivider_64: c_int = 1;
pub const ClockDivider_256: c_int = 2;
pub const ClockDivider_1024: c_int = 3;
pub const ClockDivider = c_uint;
pub extern fn timerStart(timer: c_int, divider: ClockDivider, ticks: @"u16", callback: VoidFn) void;
pub extern fn timerElapsed(timer: c_int) @"u16";
pub fn timerTick(arg_timer: c_int) callconv(.C) @"u16" {
    var timer = arg_timer;
    _ = &timer;
    return @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109120) + (timer << @intCast(2)))).*;
}
pub extern fn timerPause(timer: c_int) @"u16";
pub fn timerUnpause(arg_timer: c_int) callconv(.C) void {
    var timer = arg_timer;
    _ = &timer;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109122) + (timer << @intCast(2)))).* |= @as(vu16, @bitCast(@as(c_short, @truncate(@as(c_int, 1) << @intCast(7)))));
}
pub extern fn timerStop(timer: c_int) @"u16";
pub extern fn cpuStartTiming(timer: c_int) void;
pub extern fn cpuGetTiming(...) @"u32";
pub extern fn cpuEndTiming(...) @"u32";
pub fn timerTicks2usec(arg_ticks: @"u32") callconv(.C) @"u32" {
    var ticks = arg_ticks;
    _ = &ticks;
    return @as(@"u32", @bitCast(@as(c_uint, @truncate((@as(@"u64", @bitCast(@as(c_ulong, ticks))) *% @as(@"u64", @bitCast(@as(c_long, @as(c_int, 1000000))))) / @as(@"u64", @bitCast(@as(c_long, @as(c_int, 33513982))))))));
}
pub fn timerTicks2msec(arg_ticks: @"u32") callconv(.C) @"u32" {
    var ticks = arg_ticks;
    _ = &ticks;
    return @as(@"u32", @bitCast(@as(c_uint, @truncate((@as(@"u64", @bitCast(@as(c_ulong, ticks))) *% @as(@"u64", @bitCast(@as(c_long, @as(c_int, 1000))))) / @as(@"u64", @bitCast(@as(c_long, @as(c_int, 33513982))))))));
}
pub fn timerFreqToTicks_1(arg_freq: c_int) callconv(.C) @"u16" {
    var freq = arg_freq;
    _ = &freq;
    return @as(@"u16", @bitCast(@as(c_short, @truncate(@divTrunc(-@as(c_int, 33513982), freq)))));
}
pub fn timerFreqToTicks_64(arg_freq: c_int) callconv(.C) @"u16" {
    var freq = arg_freq;
    _ = &freq;
    return @as(@"u16", @bitCast(@as(c_short, @truncate(@divTrunc(-@as(c_int, 33513982) >> @intCast(6), freq)))));
}
pub fn timerFreqToTicks_256(arg_freq: c_int) callconv(.C) @"u16" {
    var freq = arg_freq;
    _ = &freq;
    return @as(@"u16", @bitCast(@as(c_short, @truncate(@divTrunc(-@as(c_int, 33513982) >> @intCast(8), freq)))));
}
pub fn timerFreqToTicks_1024(arg_freq: c_int) callconv(.C) @"u16" {
    var freq = arg_freq;
    _ = &freq;
    return @as(@"u16", @bitCast(@as(c_short, @truncate(@divTrunc(-@as(c_int, 33513982) >> @intCast(10), freq)))));
}
pub const FIFO_PM: c_int = 0;
pub const FIFO_SOUND: c_int = 1;
pub const FIFO_SYSTEM: c_int = 2;
pub const FIFO_MAXMOD: c_int = 3;
pub const FIFO_DSWIFI: c_int = 4;
pub const FIFO_SDMMC: c_int = 5;
pub const FIFO_FIRMWARE: c_int = 6;
pub const FIFO_RSVD_01: c_int = 7;
pub const FIFO_USER_01: c_int = 8;
pub const FIFO_USER_02: c_int = 9;
pub const FIFO_USER_03: c_int = 10;
pub const FIFO_USER_04: c_int = 11;
pub const FIFO_USER_05: c_int = 12;
pub const FIFO_USER_06: c_int = 13;
pub const FIFO_USER_07: c_int = 14;
pub const FIFO_USER_08: c_int = 15;
pub const FifoChannels = c_uint;
pub const SOUND_SET_PAN: c_int = 0;
pub const SOUND_SET_VOLUME: c_int = 1048576;
pub const SOUND_SET_FREQ: c_int = 2097152;
pub const SOUND_SET_WAVEDUTY: c_int = 3145728;
pub const SOUND_MASTER_ENABLE: c_int = 4194304;
pub const SOUND_MASTER_DISABLE: c_int = 5242880;
pub const SOUND_PAUSE: c_int = 6291456;
pub const SOUND_RESUME: c_int = 7340032;
pub const SOUND_KILL: c_int = 8388608;
pub const SOUND_SET_MASTER_VOL: c_int = 9437184;
pub const MIC_STOP: c_int = 10485760;
pub const FifoSoundCommand = c_uint;
pub const SYS_REQ_TOUCH: c_int = 0;
pub const SYS_REQ_KEYS: c_int = 1;
pub const SYS_REQ_TIME: c_int = 2;
pub const SYS_SET_TIME: c_int = 3;
pub const SDMMC_INSERT: c_int = 4;
pub const SDMMC_REMOVE: c_int = 5;
pub const FifoSystemCommands = c_uint;
pub const SDMMC_HAVE_SD: c_int = 0;
pub const SDMMC_SD_START: c_int = 1;
pub const SDMMC_SD_IS_INSERTED: c_int = 2;
pub const SDMMC_SD_STOP: c_int = 3;
pub const SDMMC_NAND_START: c_int = 4;
pub const SDMMC_NAND_STOP: c_int = 5;
pub const SDMMC_NAND_SIZE: c_int = 6;
pub const FifoSdmmcCommands = c_uint;
pub const FW_READ: c_int = 0;
pub const FW_WRITE: c_int = 1;
pub const FifoFirmwareCommands = c_uint;
pub const PM_REQ_ON: c_int = 65536;
pub const PM_REQ_OFF: c_int = 131072;
pub const PM_REQ_LED: c_int = 196608;
pub const PM_REQ_SLEEP: c_int = 262144;
pub const PM_REQ_SLEEP_DISABLE: c_int = 327680;
pub const PM_REQ_SLEEP_ENABLE: c_int = 393216;
pub const PM_REQ_BATTERY: c_int = 458752;
pub const PM_REQ_SLOT1_DISABLE: c_int = 524288;
pub const PM_REQ_SLOT1_ENABLE: c_int = 589824;
pub const FifoPMCommands = c_uint;
pub const WIFI_ENABLE: c_int = 0;
pub const WIFI_DISABLE: c_int = 1;
pub const WIFI_SYNC: c_int = 2;
pub const WIFI_STARTUP: c_int = 3;
pub const FifoWifiCommands = c_uint;
pub const PM_LED_ON: c_int = 0;
pub const PM_LED_SLEEP: c_int = 1;
pub const PM_LED_BLINK: c_int = 3;
pub const PM_LedBlinkMode = c_uint;
pub const FifoAddressHandlerFunc = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.C) void;
pub const FifoValue32HandlerFunc = ?*const fn (@"u32", ?*anyopaque) callconv(.C) void;
pub const FifoDatamsgHandlerFunc = ?*const fn (c_int, ?*anyopaque) callconv(.C) void;
pub extern fn fifoInit(...) bool;
pub extern fn fifoSendAddress(channel: c_int, address: ?*anyopaque) bool;
pub extern fn fifoSendValue32(channel: c_int, value32: @"u32") bool;
pub extern fn fifoSendDatamsg(channel: c_int, num_bytes: c_int, data_array: [*c]@"u8") bool;
pub extern fn fifoSetAddressHandler(channel: c_int, newhandler: FifoAddressHandlerFunc, userdata: ?*anyopaque) bool;
pub extern fn fifoSetValue32Handler(channel: c_int, newhandler: FifoValue32HandlerFunc, userdata: ?*anyopaque) bool;
pub extern fn fifoSetDatamsgHandler(channel: c_int, newhandler: FifoDatamsgHandlerFunc, userdata: ?*anyopaque) bool;
pub extern fn fifoCheckAddress(channel: c_int) bool;
pub extern fn fifoCheckValue32(channel: c_int) bool;
pub extern fn fifoCheckDatamsg(channel: c_int) bool;
pub extern fn fifoCheckDatamsgLength(channel: c_int) c_int;
pub extern fn fifoGetAddress(channel: c_int) ?*anyopaque;
pub extern fn fifoGetValue32(channel: c_int) @"u32";
pub extern fn fifoGetDatamsg(channel: c_int, buffersize: c_int, destbuffer: [*c]@"u8") c_int;
pub fn fifoWaitValue32(arg_channel: c_int) callconv(.C) void {
    var channel = arg_channel;
    _ = &channel;
    while (!fifoCheckValue32(channel)) {
        swiIntrWait(@as(@"u32", @bitCast(@as(c_int, 1))), @as(uint32, @bitCast(IRQ_FIFO_NOT_EMPTY)));
    }
}
pub const struct_touchPosition = extern struct {
    rawx: @"u16" = @import("std").mem.zeroes(@"u16"),
    rawy: @"u16" = @import("std").mem.zeroes(@"u16"),
    px: @"u16" = @import("std").mem.zeroes(@"u16"),
    py: @"u16" = @import("std").mem.zeroes(@"u16"),
    z1: @"u16" = @import("std").mem.zeroes(@"u16"),
    z2: @"u16" = @import("std").mem.zeroes(@"u16"),
};
pub const touchPosition = struct_touchPosition;
pub const KEY_A: c_int = 1;
pub const KEY_B: c_int = 2;
pub const KEY_SELECT: c_int = 4;
pub const KEY_START: c_int = 8;
pub const KEY_RIGHT: c_int = 16;
pub const KEY_LEFT: c_int = 32;
pub const KEY_UP: c_int = 64;
pub const KEY_DOWN: c_int = 128;
pub const KEY_R: c_int = 256;
pub const KEY_L: c_int = 512;
pub const KEY_X: c_int = 1024;
pub const KEY_Y: c_int = 2048;
pub const KEY_TOUCH: c_int = 4096;
pub const KEY_LID: c_int = 8192;
pub const enum_KEYPAD_BITS = c_uint;
pub const KEYPAD_BITS = enum_KEYPAD_BITS;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __clang_max_align_nonce2: c_longdouble align(16) = @import("std").mem.zeroes(c_longdouble),
};
pub const struct_swiSHA1context = extern struct {
    state: [5]@"u32" = @import("std").mem.zeroes([5]@"u32"),
    total: [2]@"u32" = @import("std").mem.zeroes([2]@"u32"),
    buffer: [64]@"u8" = @import("std").mem.zeroes([64]@"u8"),
    fragment_size: @"u32" = @import("std").mem.zeroes(@"u32"),
    sha_block: ?*const fn ([*c]struct_swiSHA1context, ?*const anyopaque, usize) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]struct_swiSHA1context, ?*const anyopaque, usize) callconv(.C) void),
};
pub const swiSHA1context_t = struct_swiSHA1context;
pub extern fn swiSHA1Init(ctx: [*c]swiSHA1context_t) void;
pub extern fn swiSHA1Update(ctx: [*c]swiSHA1context_t, data: ?*const anyopaque, len: usize) void;
pub extern fn swiSHA1Final(digest: ?*anyopaque, ctx: [*c]swiSHA1context_t) void;
pub extern fn swiSHA1Calc(digest: ?*anyopaque, data: ?*const anyopaque, len: usize) void;
pub extern fn swiSHA1Verify(digest1: ?*const anyopaque, digest2: ?*const anyopaque) void;
pub const wint_t = c_uint;
pub const _off_t = __int64_t;
pub const _fpos_t = __int64_t;
pub const __ino_t = __uint32_t;
pub const __dev_t = __uint32_t;
pub const __blkcnt_t = c_long;
pub const __blksize_t = c_long;
pub const __fsblkcnt_t = __uint64_t;
pub const __fsfilcnt_t = __uint32_t;
pub const __pid_t = c_int;
pub const __uid_t = c_ushort;
pub const __gid_t = c_ushort;
pub const __id_t = __uint32_t;
pub const __mode_t = __uint32_t;
pub const _off64_t = c_longlong;
pub const __off_t = _off_t;
pub const __loff_t = _off64_t;
pub const __key_t = c_long;
pub const __size_t = c_ulong;
pub const _ssize_t = c_long;
pub const __ssize_t = _ssize_t;
const union_unnamed_2 = extern union {
    __wch: wint_t,
    __wchb: [4]u8,
};
pub const _mbstate_t = extern struct {
    __count: c_int = @import("std").mem.zeroes(c_int),
    __value: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};
pub const _iconv_t = ?*anyopaque;
pub const __clock_t = c_ulong;
pub const __time_t = c_long;
pub const __clockid_t = c_ulong;
pub const __daddr_t = c_long;
pub const __timer_t = c_ulong;
pub const __sa_family_t = __uint8_t;
pub const __socklen_t = __uint32_t;
pub const __nl_item = c_int;
pub const __nlink_t = c_ushort;
pub const __suseconds_t = c_long;
pub const __useconds_t = c_ulong;
pub const struct___va_list_tag_3 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const __builtin_va_list = [1]struct___va_list_tag_3;
pub const __va_list = __builtin_va_list;
pub const __ULong = c_uint;
pub const _LOCK_T = i32;
pub const struct___lock_t = extern struct {
    lock: _LOCK_T = @import("std").mem.zeroes(_LOCK_T),
    thread_tag: u32 = @import("std").mem.zeroes(u32),
    counter: u32 = @import("std").mem.zeroes(u32),
};
pub const _LOCK_RECURSIVE_T = struct___lock_t;
pub const _COND_T = u32;
pub fn __libc_lock_init(arg_lock: [*c]_LOCK_T) callconv(.C) void {
    var lock = arg_lock;
    _ = &lock;
    lock.* = @as(_LOCK_T, @bitCast(@as(c_int, 0)));
}
pub fn __libc_lock_close(arg_lock: [*c]_LOCK_T) callconv(.C) void {
    var lock = arg_lock;
    _ = &lock;
}
pub fn __libc_lock_init_recursive(arg_lock: [*c]_LOCK_RECURSIVE_T) callconv(.C) void {
    var lock = arg_lock;
    _ = &lock;
    lock.* = _LOCK_RECURSIVE_T{
        .lock = @as(_LOCK_T, @bitCast(@as(c_int, 0))),
        .thread_tag = @as(u32, @bitCast(@as(c_int, 0))),
        .counter = @as(u32, @bitCast(@as(c_int, 0))),
    };
}
pub fn __libc_lock_close_recursive(arg_lock: [*c]_LOCK_RECURSIVE_T) callconv(.C) void {
    var lock = arg_lock;
    _ = &lock;
}
pub extern fn __libc_lock_acquire(lock: [*c]_LOCK_T) void;
pub extern fn __libc_lock_acquire_recursive(lock: [*c]_LOCK_RECURSIVE_T) void;
pub extern fn __libc_lock_release(lock: [*c]_LOCK_T) void;
pub extern fn __libc_lock_release_recursive(lock: [*c]_LOCK_RECURSIVE_T) void;
pub extern fn __libc_lock_try_acquire(lock: [*c]_LOCK_T) c_int;
pub extern fn __libc_lock_try_acquire_recursive(lock: [*c]_LOCK_RECURSIVE_T) c_int;
pub fn __libc_cond_init(arg_cond: [*c]_COND_T) callconv(.C) c_int {
    var cond = arg_cond;
    _ = &cond;
    cond.* = @as(_COND_T, @bitCast(@as(c_int, 0)));
    return 0;
}
pub extern fn __libc_cond_signal(cond: [*c]_COND_T) c_int;
pub extern fn __libc_cond_broadcast(cond: [*c]_COND_T) c_int;
pub extern fn __libc_cond_wait(cond: [*c]_COND_T, lock: [*c]_LOCK_T, timeout_ns: u64) c_int;
pub extern fn __libc_cond_wait_recursive(cond: [*c]_COND_T, lock: [*c]_LOCK_RECURSIVE_T, timeout_ns: u64) c_int;
pub const _flock_t = _LOCK_RECURSIVE_T;
pub const struct___sbuf = extern struct {
    _base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _size: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct___sFILE = extern struct {
    _p: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _r: c_int = @import("std").mem.zeroes(c_int),
    _w: c_int = @import("std").mem.zeroes(c_int),
    _flags: c_short = @import("std").mem.zeroes(c_short),
    _file: c_short = @import("std").mem.zeroes(c_short),
    _bf: struct___sbuf = @import("std").mem.zeroes(struct___sbuf),
    _lbfsize: c_int = @import("std").mem.zeroes(c_int),
    _cookie: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _read: ?*const fn ([*c]struct__reent, ?*anyopaque, [*c]u8, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]struct__reent, ?*anyopaque, [*c]u8, c_int) callconv(.C) c_int),
    _write: ?*const fn ([*c]struct__reent, ?*anyopaque, [*c]const u8, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]struct__reent, ?*anyopaque, [*c]const u8, c_int) callconv(.C) c_int),
    _seek: ?*const fn ([*c]struct__reent, ?*anyopaque, _fpos_t, c_int) callconv(.C) _fpos_t = @import("std").mem.zeroes(?*const fn ([*c]struct__reent, ?*anyopaque, _fpos_t, c_int) callconv(.C) _fpos_t),
    _close: ?*const fn ([*c]struct__reent, ?*anyopaque) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]struct__reent, ?*anyopaque) callconv(.C) c_int),
    _ub: struct___sbuf = @import("std").mem.zeroes(struct___sbuf),
    _up: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _ur: c_int = @import("std").mem.zeroes(c_int),
    _ubuf: [3]u8 = @import("std").mem.zeroes([3]u8),
    _nbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lb: struct___sbuf = @import("std").mem.zeroes(struct___sbuf),
    _blksize: c_int = @import("std").mem.zeroes(c_int),
    _offset: _off_t = @import("std").mem.zeroes(_off_t),
    _data: [*c]struct__reent = @import("std").mem.zeroes([*c]struct__reent),
    _lock: _flock_t = @import("std").mem.zeroes(_flock_t),
    _mbstate: _mbstate_t = @import("std").mem.zeroes(_mbstate_t),
    _flags2: c_int = @import("std").mem.zeroes(c_int),
};
pub const __FILE = struct___sFILE;
pub const struct___locale_t = opaque {};
pub const struct__Bigint = extern struct {
    _next: [*c]struct__Bigint = @import("std").mem.zeroes([*c]struct__Bigint),
    _k: c_int = @import("std").mem.zeroes(c_int),
    _maxwds: c_int = @import("std").mem.zeroes(c_int),
    _sign: c_int = @import("std").mem.zeroes(c_int),
    _wds: c_int = @import("std").mem.zeroes(c_int),
    _x: [1]__ULong = @import("std").mem.zeroes([1]__ULong),
};
pub const struct___tm = extern struct {
    __tm_sec: c_int = @import("std").mem.zeroes(c_int),
    __tm_min: c_int = @import("std").mem.zeroes(c_int),
    __tm_hour: c_int = @import("std").mem.zeroes(c_int),
    __tm_mday: c_int = @import("std").mem.zeroes(c_int),
    __tm_mon: c_int = @import("std").mem.zeroes(c_int),
    __tm_year: c_int = @import("std").mem.zeroes(c_int),
    __tm_wday: c_int = @import("std").mem.zeroes(c_int),
    __tm_yday: c_int = @import("std").mem.zeroes(c_int),
    __tm_isdst: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct__rand48 = extern struct {
    _seed: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    _mult: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    _add: c_ushort = @import("std").mem.zeroes(c_ushort),
};
const struct_unnamed_5 = extern struct {
    _strtok_last: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _asctime_buf: [26]u8 = @import("std").mem.zeroes([26]u8),
    _localtime_buf: struct___tm = @import("std").mem.zeroes(struct___tm),
    _gamma_signgam: c_int = @import("std").mem.zeroes(c_int),
    _rand_next: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
    _r48: struct__rand48 = @import("std").mem.zeroes(struct__rand48),
    _mblen_state: _mbstate_t = @import("std").mem.zeroes(_mbstate_t),
    _mbtowc_state: _mbstate_t = @import("std").mem.zeroes(_mbstate_t),
    _wctomb_state: _mbstate_t = @import("std").mem.zeroes(_mbstate_t),
    _l64a_buf: [8]u8 = @import("std").mem.zeroes([8]u8),
    _signal_buf: [24]u8 = @import("std").mem.zeroes([24]u8),
    _getdate_err: c_int = @import("std").mem.zeroes(c_int),
    _mbrlen_state: _mbstate_t = @import("std").mem.zeroes(_mbstate_t),
    _mbrtowc_state: _mbstate_t = @import("std").mem.zeroes(_mbstate_t),
    _mbsrtowcs_state: _mbstate_t = @import("std").mem.zeroes(_mbstate_t),
    _wcrtomb_state: _mbstate_t = @import("std").mem.zeroes(_mbstate_t),
    _wcsrtombs_state: _mbstate_t = @import("std").mem.zeroes(_mbstate_t),
    _h_errno: c_int = @import("std").mem.zeroes(c_int),
};
const union_unnamed_4 = extern union {
    _reent: struct_unnamed_5,
};
pub const struct__reent = extern struct {
    _errno: c_int = @import("std").mem.zeroes(c_int),
    _stdin: [*c]__FILE = @import("std").mem.zeroes([*c]__FILE),
    _stdout: [*c]__FILE = @import("std").mem.zeroes([*c]__FILE),
    _stderr: [*c]__FILE = @import("std").mem.zeroes([*c]__FILE),
    _inc: c_int = @import("std").mem.zeroes(c_int),
    _emergency: [25]u8 = @import("std").mem.zeroes([25]u8),
    _locale: ?*struct___locale_t = @import("std").mem.zeroes(?*struct___locale_t),
    __cleanup: ?*const fn ([*c]struct__reent) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]struct__reent) callconv(.C) void),
    _result: [*c]struct__Bigint = @import("std").mem.zeroes([*c]struct__Bigint),
    _result_k: c_int = @import("std").mem.zeroes(c_int),
    _p5s: [*c]struct__Bigint = @import("std").mem.zeroes([*c]struct__Bigint),
    _freelist: [*c][*c]struct__Bigint = @import("std").mem.zeroes([*c][*c]struct__Bigint),
    _cvtlen: c_int = @import("std").mem.zeroes(c_int),
    _cvtbuf: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _new: union_unnamed_4 = @import("std").mem.zeroes(union_unnamed_4),
    _sig_func: [*c]?*const fn (c_int) callconv(.C) void = @import("std").mem.zeroes([*c]?*const fn (c_int) callconv(.C) void),
    deviceData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const struct__on_exit_args = extern struct {
    _fnargs: [32]?*anyopaque = @import("std").mem.zeroes([32]?*anyopaque),
    _dso_handle: [32]?*anyopaque = @import("std").mem.zeroes([32]?*anyopaque),
    _fntypes: __ULong = @import("std").mem.zeroes(__ULong),
    _is_cxa: __ULong = @import("std").mem.zeroes(__ULong),
};
pub const struct__atexit = extern struct {
    _next: [*c]struct__atexit = @import("std").mem.zeroes([*c]struct__atexit),
    _ind: c_int = @import("std").mem.zeroes(c_int),
    _fns: [32]?*const fn () callconv(.C) void = @import("std").mem.zeroes([32]?*const fn () callconv(.C) void),
    _on_exit_args: struct__on_exit_args = @import("std").mem.zeroes(struct__on_exit_args),
};
pub extern var __sf: [3]__FILE;
pub const struct__glue = extern struct {
    _next: [*c]struct__glue = @import("std").mem.zeroes([*c]struct__glue),
    _niobs: c_int = @import("std").mem.zeroes(c_int),
    _iobs: [*c]__FILE = @import("std").mem.zeroes([*c]__FILE),
};
pub extern var __sglue: struct__glue;
pub extern var _impure_ptr: [*c]struct__reent;
pub extern var _impure_data: struct__reent;
pub extern var __atexit: [*c]struct__atexit;
pub extern var __atexit0: struct__atexit;
pub extern var __stdio_exit_handler: ?*const fn () callconv(.C) void;
pub extern fn _reclaim_reent([*c]struct__reent) void;
pub extern fn _fwalk_sglue([*c]struct__reent, ?*const fn ([*c]struct__reent, [*c]__FILE) callconv(.C) c_int, [*c]struct__glue) c_int;
pub const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
pub const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub extern fn __locale_mb_cur_max() c_int;
pub extern fn abort() noreturn;
pub extern fn abs(c_int) c_int;
pub extern fn arc4random() __uint32_t;
pub extern fn arc4random_uniform(__uint32_t) __uint32_t;
pub extern fn arc4random_buf(?*anyopaque, usize) void;
pub extern fn atexit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoff(__nptr: [*c]const u8) f32;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn _atoi_r([*c]struct__reent, __nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn _atol_r([*c]struct__reent, __nptr: [*c]const u8) c_long;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, _compar: __compar_fn_t) ?*anyopaque;
pub extern fn calloc(c_ulong, c_ulong) ?*anyopaque;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn free(?*anyopaque) void;
pub extern fn getenv(__string: [*c]const u8) [*c]u8;
pub extern fn _getenv_r([*c]struct__reent, __string: [*c]const u8) [*c]u8;
pub extern fn _findenv([*c]const u8, [*c]c_int) [*c]u8;
pub extern fn _findenv_r([*c]struct__reent, [*c]const u8, [*c]c_int) [*c]u8;
pub extern var suboptarg: [*c]u8;
pub extern fn getsubopt([*c][*c]u8, [*c]const [*c]u8, [*c][*c]u8) c_int;
pub extern fn labs(c_long) c_long;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn malloc(c_ulong) ?*anyopaque;
pub extern fn mblen([*c]const u8, usize) c_int;
pub extern fn _mblen_r([*c]struct__reent, [*c]const u8, usize, [*c]_mbstate_t) c_int;
pub extern fn mbtowc(noalias [*c]wchar_t, noalias [*c]const u8, usize) c_int;
pub extern fn _mbtowc_r([*c]struct__reent, noalias [*c]wchar_t, noalias [*c]const u8, usize, [*c]_mbstate_t) c_int;
pub extern fn wctomb([*c]u8, wchar_t) c_int;
pub extern fn _wctomb_r([*c]struct__reent, [*c]u8, wchar_t, [*c]_mbstate_t) c_int;
pub extern fn mbstowcs(noalias [*c]wchar_t, noalias [*c]const u8, usize) usize;
pub extern fn _mbstowcs_r([*c]struct__reent, noalias [*c]wchar_t, noalias [*c]const u8, usize, [*c]_mbstate_t) usize;
pub extern fn wcstombs(noalias [*c]u8, noalias [*c]const wchar_t, usize) usize;
pub extern fn _wcstombs_r([*c]struct__reent, noalias [*c]u8, noalias [*c]const wchar_t, usize, [*c]_mbstate_t) usize;
pub extern fn mkdtemp([*c]u8) [*c]u8;
pub extern fn mkstemp([*c]u8) c_int;
pub extern fn mkstemps([*c]u8, c_int) c_int;
pub extern fn mktemp([*c]u8) [*c]u8;
pub extern fn _mkdtemp_r([*c]struct__reent, [*c]u8) [*c]u8;
pub extern fn _mkostemp_r([*c]struct__reent, [*c]u8, c_int) c_int;
pub extern fn _mkostemps_r([*c]struct__reent, [*c]u8, c_int, c_int) c_int;
pub extern fn _mkstemp_r([*c]struct__reent, [*c]u8) c_int;
pub extern fn _mkstemps_r([*c]struct__reent, [*c]u8, c_int) c_int;
pub extern fn _mktemp_r([*c]struct__reent, [*c]u8) [*c]u8;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, _compar: __compar_fn_t) void;
pub extern fn rand() c_int;
pub extern fn realloc(?*anyopaque, c_ulong) ?*anyopaque;
pub extern fn reallocarray(?*anyopaque, usize, usize) ?*anyopaque;
pub extern fn reallocf(?*anyopaque, usize) ?*anyopaque;
pub extern fn realpath(noalias path: [*c]const u8, noalias resolved_path: [*c]u8) [*c]u8;
pub extern fn rpmatch(response: [*c]const u8) c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn strtod(__n: [*c]const u8, __end_PTR: [*c][*c]u8) f64;
pub extern fn _strtod_r([*c]struct__reent, noalias __n: [*c]const u8, noalias __end_PTR: [*c][*c]u8) f64;
pub extern fn strtof(__n: [*c]const u8, __end_PTR: [*c][*c]u8) f32;
pub extern fn strtol(__n: [*c]const u8, __end_PTR: [*c][*c]u8, __base: c_int) c_long;
pub extern fn _strtol_r([*c]struct__reent, noalias __n: [*c]const u8, noalias __end_PTR: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__n: [*c]const u8, __end_PTR: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn _strtoul_r([*c]struct__reent, noalias __n: [*c]const u8, noalias __end_PTR: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn system(__string: [*c]const u8) c_int;
pub extern fn a64l(__input: [*c]const u8) c_long;
pub extern fn l64a(__input: c_long) [*c]u8;
pub extern fn _l64a_r([*c]struct__reent, __input: c_long) [*c]u8;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.C) void, __arg: ?*anyopaque) c_int;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn _putenv_r([*c]struct__reent, __string: [*c]u8) c_int;
pub extern fn _reallocf_r([*c]struct__reent, ?*anyopaque, usize) ?*anyopaque;
pub extern fn setenv(__string: [*c]const u8, __value: [*c]const u8, __overwrite: c_int) c_int;
pub extern fn _setenv_r([*c]struct__reent, __string: [*c]const u8, __value: [*c]const u8, __overwrite: c_int) c_int;
pub extern fn __itoa(c_int, [*c]u8, c_int) [*c]u8;
pub extern fn __utoa(c_uint, [*c]u8, c_int) [*c]u8;
pub extern fn itoa(c_int, [*c]u8, c_int) [*c]u8;
pub extern fn utoa(c_uint, [*c]u8, c_int) [*c]u8;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn _drand48_r([*c]struct__reent) f64;
pub extern fn erand48([*c]c_ushort) f64;
pub extern fn _erand48_r([*c]struct__reent, [*c]c_ushort) f64;
pub extern fn jrand48([*c]c_ushort) c_long;
pub extern fn _jrand48_r([*c]struct__reent, [*c]c_ushort) c_long;
pub extern fn lcong48([*c]c_ushort) void;
pub extern fn _lcong48_r([*c]struct__reent, [*c]c_ushort) void;
pub extern fn lrand48() c_long;
pub extern fn _lrand48_r([*c]struct__reent) c_long;
pub extern fn mrand48() c_long;
pub extern fn _mrand48_r([*c]struct__reent) c_long;
pub extern fn nrand48([*c]c_ushort) c_long;
pub extern fn _nrand48_r([*c]struct__reent, [*c]c_ushort) c_long;
pub extern fn seed48([*c]c_ushort) [*c]c_ushort;
pub extern fn _seed48_r([*c]struct__reent, [*c]c_ushort) [*c]c_ushort;
pub extern fn srand48(c_long) void;
pub extern fn _srand48_r([*c]struct__reent, c_long) void;
pub extern fn initstate(c_uint, [*c]u8, usize) [*c]u8;
pub extern fn random() c_long;
pub extern fn setstate([*c]u8) [*c]u8;
pub extern fn srandom(c_uint) void;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn _atoll_r([*c]struct__reent, __nptr: [*c]const u8) c_longlong;
pub extern fn llabs(c_longlong) c_longlong;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn strtoll(__n: [*c]const u8, __end_PTR: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn _strtoll_r([*c]struct__reent, noalias __n: [*c]const u8, noalias __end_PTR: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__n: [*c]const u8, __end_PTR: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn _strtoull_r([*c]struct__reent, noalias __n: [*c]const u8, noalias __end_PTR: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn cfree(?*anyopaque) void;
pub extern fn unsetenv(__string: [*c]const u8) c_int;
pub extern fn _unsetenv_r([*c]struct__reent, __string: [*c]const u8) c_int;
pub extern fn posix_memalign([*c]?*anyopaque, usize, usize) c_int;
pub extern fn _dtoa_r([*c]struct__reent, f64, c_int, c_int, [*c]c_int, [*c]c_int, [*c][*c]u8) [*c]u8;
pub extern fn _malloc_r([*c]struct__reent, usize) ?*anyopaque;
pub extern fn _calloc_r([*c]struct__reent, usize, usize) ?*anyopaque;
pub extern fn _free_r([*c]struct__reent, ?*anyopaque) void;
pub extern fn _realloc_r([*c]struct__reent, ?*anyopaque, usize) ?*anyopaque;
pub extern fn _mstats_r([*c]struct__reent, [*c]u8) void;
pub extern fn _system_r([*c]struct__reent, [*c]const u8) c_int;
pub extern fn __eprintf([*c]const u8, [*c]const u8, c_uint, [*c]const u8) void;
pub extern fn qsort_r(__base: ?*anyopaque, __nmemb: usize, __size: usize, __thunk: ?*anyopaque, _compar: ?*const fn (?*anyopaque, ?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;
pub extern fn _strtold_r([*c]struct__reent, noalias [*c]const u8, noalias [*c][*c]u8) c_longdouble;
pub extern fn strtold([*c]const u8, [*c][*c]u8) c_longdouble;
pub extern fn aligned_alloc(c_ulong, c_ulong) ?*anyopaque;
pub extern fn at_quick_exit(?*const fn () callconv(.C) void) c_int;
pub extern fn quick_exit(c_int) void;
pub const locale_t = ?*struct___locale_t;
pub extern fn bcmp(?*const anyopaque, ?*const anyopaque, c_ulong) c_int;
pub extern fn bcopy(?*const anyopaque, ?*anyopaque, usize) void;
pub extern fn bzero(?*anyopaque, c_ulong) void;
pub extern fn explicit_bzero(?*anyopaque, usize) void;
pub extern fn ffs(c_int) c_int;
pub extern fn ffsl(c_long) c_int;
pub extern fn ffsll(c_longlong) c_int;
pub extern fn fls(c_int) c_int;
pub extern fn flsl(c_long) c_int;
pub extern fn flsll(c_longlong) c_int;
pub extern fn index([*c]const u8, c_int) [*c]u8;
pub extern fn rindex([*c]const u8, c_int) [*c]u8;
pub extern fn strcasecmp([*c]const u8, [*c]const u8) c_int;
pub extern fn strncasecmp([*c]const u8, [*c]const u8, c_ulong) c_int;
pub extern fn strcasecmp_l([*c]const u8, [*c]const u8, locale_t) c_int;
pub extern fn strncasecmp_l([*c]const u8, [*c]const u8, usize, locale_t) c_int;
pub extern fn memchr(?*const anyopaque, c_int, c_ulong) ?*anyopaque;
pub extern fn memcmp(?*const anyopaque, ?*const anyopaque, c_ulong) c_int;
pub extern fn memcpy(?*anyopaque, ?*const anyopaque, c_ulong) ?*anyopaque;
pub extern fn memmove(?*anyopaque, ?*const anyopaque, c_ulong) ?*anyopaque;
pub extern fn memset(?*anyopaque, c_int, c_ulong) ?*anyopaque;
pub extern fn strcat([*c]u8, [*c]const u8) [*c]u8;
pub extern fn strchr([*c]const u8, c_int) [*c]u8;
pub extern fn strcmp([*c]const u8, [*c]const u8) c_int;
pub extern fn strcoll([*c]const u8, [*c]const u8) c_int;
pub extern fn strcpy([*c]u8, [*c]const u8) [*c]u8;
pub extern fn strcspn([*c]const u8, [*c]const u8) c_ulong;
pub extern fn strerror(c_int) [*c]u8;
pub extern fn strlen([*c]const u8) c_ulong;
pub extern fn strncat([*c]u8, [*c]const u8, c_ulong) [*c]u8;
pub extern fn strncmp([*c]const u8, [*c]const u8, c_ulong) c_int;
pub extern fn strncpy([*c]u8, [*c]const u8, c_ulong) [*c]u8;
pub extern fn strpbrk([*c]const u8, [*c]const u8) [*c]u8;
pub extern fn strrchr([*c]const u8, c_int) [*c]u8;
pub extern fn strspn([*c]const u8, [*c]const u8) c_ulong;
pub extern fn strstr([*c]const u8, [*c]const u8) [*c]u8;
pub extern fn strtok([*c]u8, [*c]const u8) [*c]u8;
pub extern fn strxfrm([*c]u8, [*c]const u8, c_ulong) c_ulong;
pub extern fn strcoll_l([*c]const u8, [*c]const u8, locale_t) c_int;
pub extern fn strerror_l(c_int, locale_t) [*c]u8;
pub extern fn strxfrm_l(noalias [*c]u8, noalias [*c]const u8, usize, locale_t) usize;
pub extern fn strtok_r(noalias [*c]u8, noalias [*c]const u8, noalias [*c][*c]u8) [*c]u8;
pub extern fn timingsafe_bcmp(?*const anyopaque, ?*const anyopaque, usize) c_int;
pub extern fn timingsafe_memcmp(?*const anyopaque, ?*const anyopaque, usize) c_int;
pub extern fn memccpy(?*anyopaque, ?*const anyopaque, c_int, c_ulong) ?*anyopaque;
pub extern fn stpcpy([*c]u8, [*c]const u8) [*c]u8;
pub extern fn stpncpy([*c]u8, [*c]const u8, c_ulong) [*c]u8;
pub extern fn strdup([*c]const u8) [*c]u8;
pub extern fn _strdup_r([*c]struct__reent, [*c]const u8) [*c]u8;
pub extern fn strndup([*c]const u8, c_ulong) [*c]u8;
pub extern fn _strndup_r([*c]struct__reent, [*c]const u8, usize) [*c]u8;
pub extern fn strerror_r(c_int, [*c]u8, usize) c_int;
pub extern fn _strerror_r([*c]struct__reent, c_int, c_int, [*c]c_int) [*c]u8;
pub extern fn strlcat([*c]u8, [*c]const u8, c_ulong) c_ulong;
pub extern fn strlcpy([*c]u8, [*c]const u8, c_ulong) c_ulong;
pub extern fn strnlen([*c]const u8, usize) usize;
pub extern fn strsep([*c][*c]u8, [*c]const u8) [*c]u8;
pub extern fn strnstr([*c]const u8, [*c]const u8, usize) [*c]u8;
pub extern fn strlwr([*c]u8) [*c]u8;
pub extern fn strupr([*c]u8) [*c]u8;
pub extern fn strsignal(__signo: c_int) [*c]u8;
pub const struct_DynamicArray = extern struct {
    data: [*c]?*anyopaque = @import("std").mem.zeroes([*c]?*anyopaque),
    cur_size: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const DynamicArray = struct_DynamicArray;
pub extern fn DynamicArrayInit(v: [*c]DynamicArray, initialSize: c_uint) ?*anyopaque;
pub extern fn DynamicArrayDelete(v: [*c]DynamicArray) void;
pub extern fn DynamicArrayGet(v: [*c]DynamicArray, index: c_uint) ?*anyopaque;
pub extern fn DynamicArraySet(v: [*c]DynamicArray, index: c_uint, item: ?*anyopaque) bool;
pub const struct_mallinfo = extern struct {
    arena: usize = @import("std").mem.zeroes(usize),
    ordblks: usize = @import("std").mem.zeroes(usize),
    smblks: usize = @import("std").mem.zeroes(usize),
    hblks: usize = @import("std").mem.zeroes(usize),
    hblkhd: usize = @import("std").mem.zeroes(usize),
    usmblks: usize = @import("std").mem.zeroes(usize),
    fsmblks: usize = @import("std").mem.zeroes(usize),
    uordblks: usize = @import("std").mem.zeroes(usize),
    fordblks: usize = @import("std").mem.zeroes(usize),
    keepcost: usize = @import("std").mem.zeroes(usize),
};
pub extern fn memalign(c_ulong, c_ulong) ?*anyopaque;
pub extern fn _memalign_r([*c]struct__reent, usize, usize) ?*anyopaque;
pub extern fn mallinfo() struct_mallinfo;
pub extern fn _mallinfo_r([*c]struct__reent) struct_mallinfo;
pub extern fn malloc_stats() void;
pub extern fn _malloc_stats_r([*c]struct__reent) void;
pub extern fn mallopt(c_int, c_int) c_int;
pub extern fn _mallopt_r([*c]struct__reent, c_int, c_int) c_int;
pub extern fn malloc_usable_size(?*anyopaque) usize;
pub extern fn _malloc_usable_size_r([*c]struct__reent, ?*anyopaque) usize;
pub extern fn valloc(usize) ?*anyopaque;
pub extern fn _valloc_r([*c]struct__reent, usize) ?*anyopaque;
pub extern fn pvalloc(usize) ?*anyopaque;
pub extern fn _pvalloc_r([*c]struct__reent, usize) ?*anyopaque;
pub extern fn malloc_trim(usize) c_int;
pub extern fn _malloc_trim_r([*c]struct__reent, usize) c_int;
pub extern fn __malloc_lock([*c]struct__reent) void;
pub extern fn __malloc_unlock([*c]struct__reent) void;
pub extern fn mstats([*c]u8) void;
pub const struct_LinkedList = extern struct {
    next: [*c]struct_LinkedList = @import("std").mem.zeroes([*c]struct_LinkedList),
    prev: [*c]struct_LinkedList = @import("std").mem.zeroes([*c]struct_LinkedList),
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const LinkedList = struct_LinkedList;
pub extern fn linkedlistAdd(front: [*c][*c]LinkedList, data: ?*anyopaque) [*c]LinkedList;
pub extern fn linkedlistRemove(node: [*c]LinkedList) void;
pub extern fn __sassert(fileName: [*c]const u8, lineNumber: c_int, conditionString: [*c]const u8, format: [*c]const u8, ...) void;
pub extern var mosaicShadow: @"u16";
pub extern var mosaicShadowSub: @"u16";
pub const VRAM_A_LCD: c_int = 0;
pub const VRAM_A_MAIN_BG: c_int = 1;
pub const VRAM_A_MAIN_BG_0x06000000: c_int = 1;
pub const VRAM_A_MAIN_BG_0x06020000: c_int = 9;
pub const VRAM_A_MAIN_BG_0x06040000: c_int = 17;
pub const VRAM_A_MAIN_BG_0x06060000: c_int = 25;
pub const VRAM_A_MAIN_SPRITE: c_int = 2;
pub const VRAM_A_MAIN_SPRITE_0x06400000: c_int = 2;
pub const VRAM_A_MAIN_SPRITE_0x06420000: c_int = 10;
pub const VRAM_A_TEXTURE: c_int = 3;
pub const VRAM_A_TEXTURE_SLOT0: c_int = 3;
pub const VRAM_A_TEXTURE_SLOT1: c_int = 11;
pub const VRAM_A_TEXTURE_SLOT2: c_int = 19;
pub const VRAM_A_TEXTURE_SLOT3: c_int = 27;
pub const VRAM_A_TYPE = c_uint;
pub const VRAM_B_LCD: c_int = 0;
pub const VRAM_B_MAIN_BG: c_int = 9;
pub const VRAM_B_MAIN_BG_0x06000000: c_int = 1;
pub const VRAM_B_MAIN_BG_0x06020000: c_int = 9;
pub const VRAM_B_MAIN_BG_0x06040000: c_int = 17;
pub const VRAM_B_MAIN_BG_0x06060000: c_int = 25;
pub const VRAM_B_MAIN_SPRITE: c_int = 2;
pub const VRAM_B_MAIN_SPRITE_0x06400000: c_int = 2;
pub const VRAM_B_MAIN_SPRITE_0x06420000: c_int = 10;
pub const VRAM_B_TEXTURE: c_int = 11;
pub const VRAM_B_TEXTURE_SLOT0: c_int = 3;
pub const VRAM_B_TEXTURE_SLOT1: c_int = 11;
pub const VRAM_B_TEXTURE_SLOT2: c_int = 19;
pub const VRAM_B_TEXTURE_SLOT3: c_int = 27;
pub const VRAM_B_TYPE = c_uint;
pub const VRAM_C_LCD: c_int = 0;
pub const VRAM_C_MAIN_BG: c_int = 17;
pub const VRAM_C_MAIN_BG_0x06000000: c_int = 1;
pub const VRAM_C_MAIN_BG_0x06020000: c_int = 9;
pub const VRAM_C_MAIN_BG_0x06040000: c_int = 17;
pub const VRAM_C_MAIN_BG_0x06060000: c_int = 25;
pub const VRAM_C_ARM7: c_int = 2;
pub const VRAM_C_ARM7_0x06000000: c_int = 2;
pub const VRAM_C_ARM7_0x06020000: c_int = 10;
pub const VRAM_C_SUB_BG: c_int = 4;
pub const VRAM_C_SUB_BG_0x06200000: c_int = 4;
pub const VRAM_C_TEXTURE: c_int = 19;
pub const VRAM_C_TEXTURE_SLOT0: c_int = 3;
pub const VRAM_C_TEXTURE_SLOT1: c_int = 11;
pub const VRAM_C_TEXTURE_SLOT2: c_int = 19;
pub const VRAM_C_TEXTURE_SLOT3: c_int = 27;
pub const VRAM_C_TYPE = c_uint;
pub const VRAM_D_LCD: c_int = 0;
pub const VRAM_D_MAIN_BG: c_int = 25;
pub const VRAM_D_MAIN_BG_0x06000000: c_int = 1;
pub const VRAM_D_MAIN_BG_0x06020000: c_int = 9;
pub const VRAM_D_MAIN_BG_0x06040000: c_int = 17;
pub const VRAM_D_MAIN_BG_0x06060000: c_int = 25;
pub const VRAM_D_ARM7: c_int = 10;
pub const VRAM_D_ARM7_0x06000000: c_int = 2;
pub const VRAM_D_ARM7_0x06020000: c_int = 10;
pub const VRAM_D_SUB_SPRITE: c_int = 4;
pub const VRAM_D_TEXTURE: c_int = 27;
pub const VRAM_D_TEXTURE_SLOT0: c_int = 3;
pub const VRAM_D_TEXTURE_SLOT1: c_int = 11;
pub const VRAM_D_TEXTURE_SLOT2: c_int = 19;
pub const VRAM_D_TEXTURE_SLOT3: c_int = 27;
pub const VRAM_D_TYPE = c_uint;
pub const VRAM_E_LCD: c_int = 0;
pub const VRAM_E_MAIN_BG: c_int = 1;
pub const VRAM_E_MAIN_SPRITE: c_int = 2;
pub const VRAM_E_TEX_PALETTE: c_int = 3;
pub const VRAM_E_BG_EXT_PALETTE: c_int = 4;
pub const VRAM_E_TYPE = c_uint;
pub const VRAM_F_LCD: c_int = 0;
pub const VRAM_F_MAIN_BG: c_int = 1;
pub const VRAM_F_MAIN_BG_0x06000000: c_int = 1;
pub const VRAM_F_MAIN_BG_0x06004000: c_int = 9;
pub const VRAM_F_MAIN_BG_0x06010000: c_int = 17;
pub const VRAM_F_MAIN_BG_0x06014000: c_int = 25;
pub const VRAM_F_MAIN_SPRITE: c_int = 2;
pub const VRAM_F_MAIN_SPRITE_0x06400000: c_int = 2;
pub const VRAM_F_MAIN_SPRITE_0x06404000: c_int = 10;
pub const VRAM_F_MAIN_SPRITE_0x06410000: c_int = 18;
pub const VRAM_F_MAIN_SPRITE_0x06414000: c_int = 26;
pub const VRAM_F_TEX_PALETTE: c_int = 3;
pub const VRAM_F_TEX_PALETTE_SLOT0: c_int = 3;
pub const VRAM_F_TEX_PALETTE_SLOT1: c_int = 11;
pub const VRAM_F_TEX_PALETTE_SLOT4: c_int = 19;
pub const VRAM_F_TEX_PALETTE_SLOT5: c_int = 27;
pub const VRAM_F_BG_EXT_PALETTE: c_int = 4;
pub const VRAM_F_BG_EXT_PALETTE_SLOT01: c_int = 4;
pub const VRAM_F_BG_EXT_PALETTE_SLOT23: c_int = 12;
pub const VRAM_F_SPRITE_EXT_PALETTE: c_int = 5;
pub const VRAM_F_TYPE = c_uint;
pub const VRAM_G_LCD: c_int = 0;
pub const VRAM_G_MAIN_BG: c_int = 1;
pub const VRAM_G_MAIN_BG_0x06000000: c_int = 1;
pub const VRAM_G_MAIN_BG_0x06004000: c_int = 9;
pub const VRAM_G_MAIN_BG_0x06010000: c_int = 17;
pub const VRAM_G_MAIN_BG_0x06014000: c_int = 25;
pub const VRAM_G_MAIN_SPRITE: c_int = 2;
pub const VRAM_G_MAIN_SPRITE_0x06400000: c_int = 2;
pub const VRAM_G_MAIN_SPRITE_0x06404000: c_int = 10;
pub const VRAM_G_MAIN_SPRITE_0x06410000: c_int = 18;
pub const VRAM_G_MAIN_SPRITE_0x06414000: c_int = 26;
pub const VRAM_G_TEX_PALETTE: c_int = 3;
pub const VRAM_G_TEX_PALETTE_SLOT0: c_int = 3;
pub const VRAM_G_TEX_PALETTE_SLOT1: c_int = 11;
pub const VRAM_G_TEX_PALETTE_SLOT4: c_int = 19;
pub const VRAM_G_TEX_PALETTE_SLOT5: c_int = 27;
pub const VRAM_G_BG_EXT_PALETTE: c_int = 4;
pub const VRAM_G_BG_EXT_PALETTE_SLOT01: c_int = 4;
pub const VRAM_G_BG_EXT_PALETTE_SLOT23: c_int = 12;
pub const VRAM_G_SPRITE_EXT_PALETTE: c_int = 5;
pub const VRAM_G_TYPE = c_uint;
pub const VRAM_H_LCD: c_int = 0;
pub const VRAM_H_SUB_BG: c_int = 1;
pub const VRAM_H_SUB_BG_EXT_PALETTE: c_int = 2;
pub const VRAM_H_TYPE = c_uint;
pub const VRAM_I_LCD: c_int = 0;
pub const VRAM_I_SUB_BG_0x06208000: c_int = 1;
pub const VRAM_I_SUB_SPRITE: c_int = 2;
pub const VRAM_I_SUB_SPRITE_EXT_PALETTE: c_int = 3;
pub const VRAM_I_TYPE = c_uint;
pub const _palette = [256]@"u16";
pub const _ext_palette = [16]_palette;
pub extern fn vramSetPrimaryBanks(a: VRAM_A_TYPE, b: VRAM_B_TYPE, c: VRAM_C_TYPE, d: VRAM_D_TYPE) @"u32";
pub extern fn vramSetMainBanks(a: VRAM_A_TYPE, b: VRAM_B_TYPE, c: VRAM_C_TYPE, d: VRAM_D_TYPE) @"u32";
pub extern fn vramSetBanks_EFG(e: VRAM_E_TYPE, f: VRAM_F_TYPE, g: VRAM_G_TYPE) @"u32";
pub extern fn vramDefault(...) @"u32";
pub extern fn vramRestorePrimaryBanks(vramTemp: @"u32") void;
pub extern fn vramRestoreMainBanks(vramTemp: @"u32") void;
pub extern fn vramRestoreBanks_EFG(vramTemp: @"u32") void;
pub fn vramSetBankA(arg_a: VRAM_A_TYPE) callconv(.C) void {
    var a = arg_a;
    _ = &a;
    @as([*c]volatile vu8, @ptrFromInt(@as(c_int, 67109440))).* = @as(@"u8", @bitCast(@as(u8, @truncate(@as(c_uint, @bitCast(@as(c_int, 1) << @intCast(7))) | a))));
}
pub fn vramSetBankB(arg_b: VRAM_B_TYPE) callconv(.C) void {
    var b = arg_b;
    _ = &b;
    @as([*c]volatile vu8, @ptrFromInt(@as(c_int, 67109441))).* = @as(@"u8", @bitCast(@as(u8, @truncate(@as(c_uint, @bitCast(@as(c_int, 1) << @intCast(7))) | b))));
}
pub fn vramSetBankC(arg_c: VRAM_C_TYPE) callconv(.C) void {
    var c = arg_c;
    _ = &c;
    @as([*c]volatile vu8, @ptrFromInt(@as(c_int, 67109442))).* = @as(@"u8", @bitCast(@as(u8, @truncate(@as(c_uint, @bitCast(@as(c_int, 1) << @intCast(7))) | c))));
}
pub fn vramSetBankD(arg_d: VRAM_D_TYPE) callconv(.C) void {
    var d = arg_d;
    _ = &d;
    @as([*c]volatile vu8, @ptrFromInt(@as(c_int, 67109443))).* = @as(@"u8", @bitCast(@as(u8, @truncate(@as(c_uint, @bitCast(@as(c_int, 1) << @intCast(7))) | d))));
}
pub fn vramSetBankE(arg_e: VRAM_E_TYPE) callconv(.C) void {
    var e = arg_e;
    _ = &e;
    @as([*c]volatile vu8, @ptrFromInt(@as(c_int, 67109444))).* = @as(@"u8", @bitCast(@as(u8, @truncate(@as(c_uint, @bitCast(@as(c_int, 1) << @intCast(7))) | e))));
}
pub fn vramSetBankF(arg_f: VRAM_F_TYPE) callconv(.C) void {
    var f = arg_f;
    _ = &f;
    @as([*c]volatile vu8, @ptrFromInt(@as(c_int, 67109445))).* = @as(@"u8", @bitCast(@as(u8, @truncate(@as(c_uint, @bitCast(@as(c_int, 1) << @intCast(7))) | f))));
}
pub fn vramSetBankG(arg_g: VRAM_G_TYPE) callconv(.C) void {
    var g = arg_g;
    _ = &g;
    @as([*c]volatile vu8, @ptrFromInt(@as(c_int, 67109446))).* = @as(@"u8", @bitCast(@as(u8, @truncate(@as(c_uint, @bitCast(@as(c_int, 1) << @intCast(7))) | g))));
}
pub fn vramSetBankH(arg_h: VRAM_H_TYPE) callconv(.C) void {
    var h = arg_h;
    _ = &h;
    @as([*c]volatile vu8, @ptrFromInt(@as(c_int, 67109448))).* = @as(@"u8", @bitCast(@as(u8, @truncate(@as(c_uint, @bitCast(@as(c_int, 1) << @intCast(7))) | h))));
}
pub fn vramSetBankI(arg_i: VRAM_I_TYPE) callconv(.C) void {
    var i = arg_i;
    _ = &i;
    @as([*c]volatile vu8, @ptrFromInt(@as(c_int, 67109449))).* = @as(@"u8", @bitCast(@as(u8, @truncate(@as(c_uint, @bitCast(@as(c_int, 1) << @intCast(7))) | i))));
}
pub const MODE_0_2D: c_int = 65536;
pub const MODE_1_2D: c_int = 65537;
pub const MODE_2_2D: c_int = 65538;
pub const MODE_3_2D: c_int = 65539;
pub const MODE_4_2D: c_int = 65540;
pub const MODE_5_2D: c_int = 65541;
pub const MODE_6_2D: c_int = 65542;
pub const MODE_0_3D: c_int = 65800;
pub const MODE_1_3D: c_int = 65801;
pub const MODE_2_3D: c_int = 65802;
pub const MODE_3_3D: c_int = 65803;
pub const MODE_4_3D: c_int = 65804;
pub const MODE_5_3D: c_int = 65805;
pub const MODE_6_3D: c_int = 65806;
pub const MODE_FIFO: c_int = 196608;
pub const MODE_FB0: c_int = 131072;
pub const MODE_FB1: c_int = 393216;
pub const MODE_FB2: c_int = 655360;
pub const MODE_FB3: c_int = 917504;
pub const VideoMode = c_uint;
pub fn videoSetMode(arg_mode: @"u32") callconv(.C) void {
    var mode = arg_mode;
    _ = &mode;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67108864))).* = mode;
}
pub fn videoSetModeSub(arg_mode: @"u32") callconv(.C) void {
    var mode = arg_mode;
    _ = &mode;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67112960))).* = mode;
}
pub fn videoGetMode() callconv(.C) c_int {
    return @as(c_int, @bitCast(@as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67108864))).* & @as(@"u32", @bitCast(@as(c_int, 196615)))));
}
pub fn videoGetModeSub() callconv(.C) c_int {
    return @as(c_int, @bitCast(@as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67112960))).* & @as(@"u32", @bitCast(@as(c_int, 196615)))));
}
pub fn video3DEnabled() callconv(.C) bool {
    return (if ((@as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67108864))).* & @as(@"u32", @bitCast(@as(c_int, 1) << @intCast(3)))) != 0) @as(c_int, 1) else @as(c_int, 0)) != 0;
}
pub fn videoBgEnable(arg_number: c_int) callconv(.C) void {
    var number = arg_number;
    _ = &number;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67108864))).* |= @as(vu32, @bitCast(@as(@"u32", @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 8) + number)))));
}
pub fn videoBgEnableSub(arg_number: c_int) callconv(.C) void {
    var number = arg_number;
    _ = &number;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67112960))).* |= @as(vu32, @bitCast(@as(@"u32", @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 8) + number)))));
}
pub fn videoBgDisable(arg_number: c_int) callconv(.C) void {
    var number = arg_number;
    _ = &number;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67108864))).* &= @as(vu32, @bitCast(@as(@"u32", @bitCast(~(@as(c_int, 1) << @intCast(@as(c_int, 8) + number))))));
}
pub fn videoBgDisableSub(arg_number: c_int) callconv(.C) void {
    var number = arg_number;
    _ = &number;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67112960))).* &= @as(vu32, @bitCast(@as(@"u32", @bitCast(~(@as(c_int, 1) << @intCast(@as(c_int, 8) + number))))));
}
pub extern fn setBrightness(screen: c_int, level: c_int) void;
pub fn setBackdropColor(color: @"u16") callconv(.C) void {
    _ = &color;
    @as([*c]@"u16", @ptrFromInt(@as(c_int, 83886080)))[@as(c_uint, @intCast(@as(c_int, 0)))] = color;
}
pub fn setBackdropColorSub(color: @"u16") callconv(.C) void {
    _ = &color;
    @as([*c]@"u16", @ptrFromInt(@as(c_int, 83887104)))[@as(c_uint, @intCast(@as(c_int, 0)))] = color;
}
pub const struct_bg_scroll = extern struct {
    x: @"u16" = @import("std").mem.zeroes(@"u16"),
    y: @"u16" = @import("std").mem.zeroes(@"u16"),
};
pub const bg_scroll = struct_bg_scroll;
pub const struct_bg_transform = extern struct {
    hdx: s16 = @import("std").mem.zeroes(s16),
    vdx: s16 = @import("std").mem.zeroes(s16),
    hdy: s16 = @import("std").mem.zeroes(s16),
    vdy: s16 = @import("std").mem.zeroes(s16),
    dx: s32 = @import("std").mem.zeroes(s32),
    dy: s32 = @import("std").mem.zeroes(s32),
};
pub const bg_transform = struct_bg_transform;
pub const struct_bg_attribute = extern struct {
    control: [4]@"u16" = @import("std").mem.zeroes([4]@"u16"),
    scroll: [4]bg_scroll = @import("std").mem.zeroes([4]bg_scroll),
    bg2_rotation: bg_transform = @import("std").mem.zeroes(bg_transform),
    bg3_rotation: bg_transform = @import("std").mem.zeroes(bg_transform),
};
pub const bg_attribute = struct_bg_attribute;
pub const struct_TileMapEntry8 = extern struct {
    index: @"u8" = @import("std").mem.zeroes(@"u8"),
};
pub const TileMapEntry8 = struct_TileMapEntry8; // /opt/devkitpro/libnds/include/nds/arm9/background.h:152:7: warning: struct demoted to opaque type - has bitfield
pub const struct_TileMapEntry16 = opaque {};
pub const TileMapEntry16 = struct_TileMapEntry16;
pub const BG_32x32: c_int = 0;
pub const BG_64x32: c_int = 16384;
pub const BG_32x64: c_int = 32768;
pub const BG_64x64: c_int = 49152;
pub const BG_RS_16x16: c_int = 0;
pub const BG_RS_32x32: c_int = 16384;
pub const BG_RS_64x64: c_int = 32768;
pub const BG_RS_128x128: c_int = 49152;
pub const BG_BMP8_128x128: c_int = 128;
pub const BG_BMP8_256x256: c_int = 16512;
pub const BG_BMP8_512x256: c_int = 32896;
pub const BG_BMP8_512x512: c_int = 49280;
pub const BG_BMP8_1024x512: c_int = 16384;
pub const BG_BMP8_512x1024: c_int = 0;
pub const BG_BMP16_128x128: c_int = 132;
pub const BG_BMP16_256x256: c_int = 16516;
pub const BG_BMP16_512x256: c_int = 32900;
pub const BG_BMP16_512x512: c_int = 49284;
pub const BG_MOSAIC_ON: c_int = 64;
pub const BG_MOSAIC_OFF: c_int = 0;
pub const BG_PRIORITY_0: c_int = 0;
pub const BG_PRIORITY_1: c_int = 1;
pub const BG_PRIORITY_2: c_int = 2;
pub const BG_PRIORITY_3: c_int = 3;
pub const BG_WRAP_OFF: c_int = 0;
pub const BG_WRAP_ON: c_int = 8192;
pub const BG_PALETTE_SLOT0: c_int = 0;
pub const BG_PALETTE_SLOT1: c_int = 0;
pub const BG_PALETTE_SLOT2: c_int = 8192;
pub const BG_PALETTE_SLOT3: c_int = 8192;
pub const BG_COLOR_256: c_int = 128;
pub const BG_COLOR_16: c_int = 0;
pub const BackgroundControl = c_uint;
pub const struct_BgState = extern struct {
    angle: c_int = @import("std").mem.zeroes(c_int),
    centerX: s32 = @import("std").mem.zeroes(s32),
    centerY: s32 = @import("std").mem.zeroes(s32),
    scaleX: s32 = @import("std").mem.zeroes(s32),
    scaleY: s32 = @import("std").mem.zeroes(s32),
    scrollX: s32 = @import("std").mem.zeroes(s32),
    scrollY: s32 = @import("std").mem.zeroes(s32),
    size: c_int = @import("std").mem.zeroes(c_int),
    type: c_int = @import("std").mem.zeroes(c_int),
    dirty: bool = @import("std").mem.zeroes(bool),
};
pub const BgState = struct_BgState;
pub extern var bgControl: [8][*c]volatile vuint16;
pub extern var bgScrollTable: [8][*c]bg_scroll;
pub extern var bgTransform: [8][*c]bg_transform;
pub extern var bgState: [8]BgState;
pub const BgType_Text8bpp: c_int = 0;
pub const BgType_Text4bpp: c_int = 1;
pub const BgType_Rotation: c_int = 2;
pub const BgType_ExRotation: c_int = 3;
pub const BgType_Bmp8: c_int = 4;
pub const BgType_Bmp16: c_int = 5;
pub const BgType = c_uint;
pub const BgSize_R_128x128: c_int = 0;
pub const BgSize_R_256x256: c_int = 16384;
pub const BgSize_R_512x512: c_int = 32768;
pub const BgSize_R_1024x1024: c_int = 49152;
pub const BgSize_T_256x256: c_int = 65536;
pub const BgSize_T_512x256: c_int = 81920;
pub const BgSize_T_256x512: c_int = 98304;
pub const BgSize_T_512x512: c_int = 114688;
pub const BgSize_ER_128x128: c_int = 131072;
pub const BgSize_ER_256x256: c_int = 147456;
pub const BgSize_ER_512x512: c_int = 163840;
pub const BgSize_ER_1024x1024: c_int = 180224;
pub const BgSize_B8_128x128: c_int = 196736;
pub const BgSize_B8_256x256: c_int = 213120;
pub const BgSize_B8_512x256: c_int = 229504;
pub const BgSize_B8_512x512: c_int = 245888;
pub const BgSize_B8_1024x512: c_int = 212992;
pub const BgSize_B8_512x1024: c_int = 196608;
pub const BgSize_B16_128x128: c_int = 262276;
pub const BgSize_B16_256x256: c_int = 278660;
pub const BgSize_B16_512x256: c_int = 295044;
pub const BgSize_B16_512x512: c_int = 311428;
pub const BgSize = c_uint;
pub extern fn bgIsText(id: c_int) bool;
pub extern fn bgInit_call(layer: c_int, @"type": BgType, size: BgSize, mapBase: c_int, tileBase: c_int) c_int;
pub extern fn bgInitSub_call(layer: c_int, @"type": BgType, size: BgSize, mapBase: c_int, tileBase: c_int) c_int;
pub extern fn bgUpdate() void;
pub fn bgSetRotate(arg_id: c_int, arg_angle: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var angle = arg_angle;
    _ = &angle;
    bgState[@as(c_uint, @intCast(id))].angle = angle;
    bgState[@as(c_uint, @intCast(id))].dirty = @as(c_int, 1) != 0;
}
pub fn bgRotate(arg_id: c_int, arg_angle: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var angle = arg_angle;
    _ = &angle;
    _ = if (!bgIsText(id)) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 529), "!bgIsText(id)", "Cannot Rotate a Text Background");
    bgSetRotate(id, angle + bgState[@as(c_uint, @intCast(id))].angle);
}
pub fn bgSet(arg_id: c_int, arg_angle: c_int, arg_sx: s32, arg_sy: s32, arg_scrollX: s32, arg_scrollY: s32, arg_rotCenterX: s32, arg_rotCenterY: s32) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var angle = arg_angle;
    _ = &angle;
    var sx = arg_sx;
    _ = &sx;
    var sy = arg_sy;
    _ = &sy;
    var scrollX = arg_scrollX;
    _ = &scrollX;
    var scrollY = arg_scrollY;
    _ = &scrollY;
    var rotCenterX = arg_rotCenterX;
    _ = &rotCenterX;
    var rotCenterY = arg_rotCenterY;
    _ = &rotCenterY;
    bgState[@as(c_uint, @intCast(id))].scaleX = sx;
    bgState[@as(c_uint, @intCast(id))].scaleY = sy;
    bgState[@as(c_uint, @intCast(id))].scrollX = scrollX;
    bgState[@as(c_uint, @intCast(id))].scrollY = scrollY;
    bgState[@as(c_uint, @intCast(id))].centerX = rotCenterX;
    bgState[@as(c_uint, @intCast(id))].centerY = rotCenterY;
    bgState[@as(c_uint, @intCast(id))].angle = angle;
    bgState[@as(c_uint, @intCast(id))].dirty = @as(c_int, 1) != 0;
}
pub fn bgSetRotateScale(arg_id: c_int, arg_angle: c_int, arg_sx: s32, arg_sy: s32) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var angle = arg_angle;
    _ = &angle;
    var sx = arg_sx;
    _ = &sx;
    var sy = arg_sy;
    _ = &sy;
    bgState[@as(c_uint, @intCast(id))].scaleX = sx;
    bgState[@as(c_uint, @intCast(id))].scaleY = sy;
    bgState[@as(c_uint, @intCast(id))].angle = angle;
    bgState[@as(c_uint, @intCast(id))].dirty = @as(c_int, 1) != 0;
}
pub fn bgSetScale(arg_id: c_int, arg_sx: s32, arg_sy: s32) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var sx = arg_sx;
    _ = &sx;
    var sy = arg_sy;
    _ = &sy;
    _ = if (!bgIsText(id)) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 602), "!bgIsText(id)", "Cannot Scale a Text Background");
    bgState[@as(c_uint, @intCast(id))].scaleX = sx;
    bgState[@as(c_uint, @intCast(id))].scaleY = sy;
    bgState[@as(c_uint, @intCast(id))].dirty = @as(c_int, 1) != 0;
}
pub fn bgInit(arg_layer: c_int, arg_type: BgType, arg_size: BgSize, arg_mapBase: c_int, arg_tileBase: c_int) callconv(.C) c_int {
    var layer = arg_layer;
    _ = &layer;
    var @"type" = arg_type;
    _ = &@"type";
    var size = arg_size;
    _ = &size;
    var mapBase = arg_mapBase;
    _ = &mapBase;
    var tileBase = arg_tileBase;
    _ = &tileBase;
    _ = if ((layer >= @as(c_int, 0)) and (layer <= @as(c_int, 3))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 635), "layer >= 0 && layer <= 3", "Only layers 0 - 3 are supported");
    _ = if ((tileBase >= @as(c_int, 0)) and (tileBase <= @as(c_int, 15))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 636), "tileBase >= 0 && tileBase <= 15", "Background tile base is out of range");
    _ = if ((mapBase >= @as(c_int, 0)) and (mapBase <= @as(c_int, 31))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 637), "mapBase >=0 && mapBase <= 31", "Background Map Base is out of range");
    _ = if ((layer != @as(c_int, 0)) or !video3DEnabled()) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 638), "layer != 0 || !video3DEnabled()", "Background 0 is currently being used for 3D display");
    _ = if (((layer > @as(c_int, 1)) or (@"type" == @as(c_uint, @bitCast(BgType_Text8bpp)))) or (@"type" == @as(c_uint, @bitCast(BgType_Text4bpp)))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 639), "layer > 1 || type == BgType_Text8bpp || type == BgType_Text4bpp", "Incorrect background type for mode");
    _ = if ((tileBase == @as(c_int, 0)) or (@"type" < @as(c_uint, @bitCast(BgType_Bmp8)))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 641), "tileBase == 0 || type < BgType_Bmp8", "Tile base is unused for bitmaps.  Can be offset using mapBase * 16KB");
    _ = if (((mapBase == @as(c_int, 0)) or (@"type" != @as(c_uint, @bitCast(BgType_Bmp8)))) or ((size != @as(c_uint, @bitCast(BgSize_B8_512x1024))) and (size != @as(c_uint, @bitCast(BgSize_B8_1024x512))))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 642), "(mapBase == 0 || type != BgType_Bmp8) || (size != BgSize_B8_512x1024 && size != BgSize_B8_1024x512)", "Large Bitmaps cannot be offset");
    return bgInit_call(layer, @"type", size, mapBase, tileBase);
}
pub fn bgInitSub(arg_layer: c_int, arg_type: BgType, arg_size: BgSize, arg_mapBase: c_int, arg_tileBase: c_int) callconv(.C) c_int {
    var layer = arg_layer;
    _ = &layer;
    var @"type" = arg_type;
    _ = &@"type";
    var size = arg_size;
    _ = &size;
    var mapBase = arg_mapBase;
    _ = &mapBase;
    var tileBase = arg_tileBase;
    _ = &tileBase;
    _ = if ((layer >= @as(c_int, 0)) and (layer <= @as(c_int, 3))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 672), "layer >= 0 && layer <= 3", "Only layers 0 - 3 are supported");
    _ = if ((tileBase >= @as(c_int, 0)) and (tileBase <= @as(c_int, 15))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 673), "tileBase >= 0 && tileBase <= 15", "Background tile base is out of range");
    _ = if ((mapBase >= @as(c_int, 0)) and (mapBase <= @as(c_int, 31))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 674), "mapBase >=0 && mapBase <= 31", "Background Map Base is out of range");
    _ = if (((layer > @as(c_int, 1)) or (@"type" == @as(c_uint, @bitCast(BgType_Text8bpp)))) or (@"type" == @as(c_uint, @bitCast(BgType_Text4bpp)))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 675), "layer > 1 || type == BgType_Text8bpp|| type == BgType_Text4bpp", "Incorrect background type for mode");
    _ = if ((tileBase == @as(c_int, 0)) or (@"type" < @as(c_uint, @bitCast(BgType_Bmp8)))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 676), "tileBase == 0 || type < BgType_Bmp8", "Tile base is unused for bitmaps.  Can be offset using mapBase * 16KB");
    _ = if ((size != @as(c_uint, @bitCast(BgSize_B8_512x1024))) and (size != @as(c_uint, @bitCast(BgSize_B8_1024x512)))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 677), "(size != BgSize_B8_512x1024 && size != BgSize_B8_1024x512)", "Sub Display has no large Bitmaps");
    return bgInitSub_call(layer, @"type", size, mapBase, tileBase);
}
pub fn bgSetControlBits(arg_id: c_int, arg_bits: @"u16") callconv(.C) [*c]volatile vuint16 {
    var id = arg_id;
    _ = &id;
    var bits = arg_bits;
    _ = &bits;
    _ = if ((id >= @as(c_int, 0)) and (id <= @as(c_int, 7))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 694), "id >= 0 && id <= 7", "bgSetControlBits(), id must be the number returned from bgInit or bgInitSub");
    bgControl[@as(c_uint, @intCast(id))].* |= @as(vuint16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, bits)))))));
    return bgControl[@as(c_uint, @intCast(id))];
}
pub fn bgClearControlBits(arg_id: c_int, arg_bits: @"u16") callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var bits = arg_bits;
    _ = &bits;
    _ = if ((id >= @as(c_int, 0)) and (id <= @as(c_int, 7))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 708), "id >= 0 && id <= 7", "bgClearControlBits(), id must be the number returned from bgInit or bgInitSub");
    bgControl[@as(c_uint, @intCast(id))].* &= @as(vuint16, @bitCast(@as(c_short, @truncate(~@as(c_int, @bitCast(@as(c_uint, bits)))))));
}
pub fn bgWrapOn(arg_id: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    _ = bgSetControlBits(id, @as(@"u16", @bitCast(@as(c_short, @truncate(@as(c_int, 1) << @intCast(@as(c_int, 13)))))));
}
pub fn bgWrapOff(arg_id: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    bgClearControlBits(id, @as(@"u16", @bitCast(@as(c_short, @truncate(@as(c_int, 1) << @intCast(@as(c_int, 13)))))));
}
pub fn bgSetPriority(arg_id: c_int, arg_priority: c_uint) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var priority = arg_priority;
    _ = &priority;
    _ = if (priority < @as(c_uint, @bitCast(@as(c_int, 4)))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 743), "priority < 4", "Priority must be less than 4");
    bgControl[@as(c_uint, @intCast(id))].* &= @as(vuint16, @bitCast(@as(c_short, @truncate(~@as(c_int, 3)))));
    bgControl[@as(c_uint, @intCast(id))].* |= @as(vuint16, @bitCast(@as(c_ushort, @truncate(priority))));
}
pub fn bgSetMapBase(arg_id: c_int, arg_base: c_uint) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var base = arg_base;
    _ = &base;
    _ = if (base <= @as(c_uint, @bitCast(@as(c_int, 31)))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 759), "base <= 31", "Map base cannot exceed 31");
    bgControl[@as(c_uint, @intCast(id))].* &= @as(vuint16, @bitCast(@as(c_short, @truncate(~(@as(c_int, 31) << @intCast(8))))));
    bgControl[@as(c_uint, @intCast(id))].* |= @as(vuint16, @bitCast(@as(c_ushort, @truncate(base << @intCast(8)))));
}
pub fn bgSetTileBase(arg_id: c_int, arg_base: c_uint) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var base = arg_base;
    _ = &base;
    _ = if (base <= @as(c_uint, @bitCast(@as(c_int, 15)))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 775), "base <= 15", "Tile base cannot exceed 15");
    bgControl[@as(c_uint, @intCast(id))].* &= @as(vuint16, @bitCast(@as(c_short, @truncate(~(@as(c_int, 15) << @intCast(2))))));
    bgControl[@as(c_uint, @intCast(id))].* |= @as(vuint16, @bitCast(@as(c_ushort, @truncate(base << @intCast(2)))));
}
pub fn bgSetScrollf(arg_id: c_int, arg_x: s32, arg_y: s32) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    bgState[@as(c_uint, @intCast(id))].scrollX = x;
    bgState[@as(c_uint, @intCast(id))].scrollY = y;
    bgState[@as(c_uint, @intCast(id))].dirty = @as(c_int, 1) != 0;
}
pub fn bgSetScroll(arg_id: c_int, arg_x: c_int, arg_y: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    bgSetScrollf(id, x << @intCast(8), y << @intCast(8));
}
pub fn bgMosaicEnable(arg_id: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    bgControl[@as(c_uint, @intCast(id))].* |= @as(vuint16, @bitCast(@as(c_short, @truncate(@as(c_int, 1) << @intCast(@as(c_int, 6))))));
}
pub fn bgMosaicDisable(arg_id: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    bgControl[@as(c_uint, @intCast(id))].* &= @as(vuint16, @bitCast(@as(c_short, @truncate(~(@as(c_int, 1) << @intCast(@as(c_int, 6)))))));
}
pub fn bgSetMosaic(arg_dx: c_uint, arg_dy: c_uint) callconv(.C) void {
    var dx = arg_dx;
    _ = &dx;
    var dy = arg_dy;
    _ = &dy;
    _ = if ((dx < @as(c_uint, @bitCast(@as(c_int, 16)))) and (dy < @as(c_uint, @bitCast(@as(c_int, 16))))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 841), "dx < 16 && dy < 16", "Mosaic range is 0 to 15");
    mosaicShadow = @as(@"u16", @bitCast(@as(c_ushort, @truncate(@as(c_uint, @bitCast(@as(c_int, @bitCast(@as(c_uint, mosaicShadow))) & @as(c_int, 65280))) | (dx | (dy << @intCast(4)))))));
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67108940))).* = mosaicShadow;
}
pub fn bgSetMosaicSub(arg_dx: c_uint, arg_dy: c_uint) callconv(.C) void {
    var dx = arg_dx;
    _ = &dx;
    var dy = arg_dy;
    _ = &dy;
    _ = if ((dx < @as(c_uint, @bitCast(@as(c_int, 16)))) and (dy < @as(c_uint, @bitCast(@as(c_int, 16))))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 854), "dx < 16 && dy < 16", "Mosaic range is 0 to 15");
    mosaicShadowSub = @as(@"u16", @bitCast(@as(c_ushort, @truncate(@as(c_uint, @bitCast(@as(c_int, @bitCast(@as(c_uint, mosaicShadowSub))) & @as(c_int, 65280))) | (dx | (dy << @intCast(4)))))));
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67113036))).* = mosaicShadowSub;
}
pub fn bgGetPriority(arg_id: c_int) callconv(.C) c_int {
    var id = arg_id;
    _ = &id;
    return @as(c_int, @bitCast(@as(c_uint, bgControl[@as(c_uint, @intCast(id))].*))) & @as(c_int, 3);
}
pub fn bgGetMapBase(arg_id: c_int) callconv(.C) c_int {
    var id = arg_id;
    _ = &id;
    return (@as(c_int, @bitCast(@as(c_uint, bgControl[@as(c_uint, @intCast(id))].*))) >> @intCast(8)) & @as(c_int, 31);
}
pub fn bgGetTileBase(arg_id: c_int) callconv(.C) c_int {
    var id = arg_id;
    _ = &id;
    return (@as(c_int, @bitCast(@as(c_uint, bgControl[@as(c_uint, @intCast(id))].*))) >> @intCast(2)) & @as(c_int, 15);
}
pub fn bgGetMapPtr(arg_id: c_int) callconv(.C) [*c]@"u16" {
    var id = arg_id;
    _ = &id;
    return if (id < @as(c_int, 4)) @as([*c]@"u16", @ptrFromInt((bgGetMapBase(id) * @as(c_int, 2048)) + @as(c_int, 100663296))) else @as([*c]@"u16", @ptrFromInt((bgGetMapBase(id) * @as(c_int, 2048)) + @as(c_int, 102760448)));
}
pub fn bgGetGfxPtr(arg_id: c_int) callconv(.C) [*c]@"u16" {
    var id = arg_id;
    _ = &id;
    if (bgState[@as(c_uint, @intCast(id))].type < BgType_Bmp8) return if (id < @as(c_int, 4)) @as([*c]@"u16", @ptrFromInt((bgGetTileBase(id) * @as(c_int, 16384)) + @as(c_int, 100663296))) else @as([*c]@"u16", @ptrFromInt((bgGetTileBase(id) * @as(c_int, 16384)) + @as(c_int, 102760448))) else return if (id < @as(c_int, 4)) @as([*c]@"u16", @ptrFromInt(@as(c_int, 100663296))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 8192) * bgGetMapBase(id))))) else @as([*c]@"u16", @ptrFromInt(@as(c_int, 102760448))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 8192) * bgGetMapBase(id)))));
    return null;
}
pub fn bgScrollf(arg_id: c_int, arg_dx: s32, arg_dy: s32) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var dx = arg_dx;
    _ = &dx;
    var dy = arg_dy;
    _ = &dy;
    bgSetScrollf(id, bgState[@as(c_uint, @intCast(id))].scrollX + dx, bgState[@as(c_uint, @intCast(id))].scrollY + dy);
}
pub fn bgScroll(arg_id: c_int, arg_dx: c_int, arg_dy: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var dx = arg_dx;
    _ = &dx;
    var dy = arg_dy;
    _ = &dy;
    bgScrollf(id, dx << @intCast(8), dy << @intCast(8));
}
pub fn bgShow(arg_id: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    if (id < @as(c_int, 4)) {
        videoBgEnable(id);
    } else {
        videoBgEnableSub(id & @as(c_int, 3));
    }
}
pub fn bgHide(arg_id: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    if (id < @as(c_int, 4)) {
        videoBgDisable(id);
    } else {
        videoBgDisableSub(id & @as(c_int, 3));
    }
}
pub fn bgSetCenterf(arg_id: c_int, arg_x: s32, arg_y: s32) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    _ = if (!bgIsText(id)) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 986), "!bgIsText(id)", "Text Backgrounds have no Center of Rotation");
    bgState[@as(c_uint, @intCast(id))].centerX = x;
    bgState[@as(c_uint, @intCast(id))].centerY = y;
    bgState[@as(c_uint, @intCast(id))].dirty = @as(c_int, 1) != 0;
}
pub fn bgSetCenter(arg_id: c_int, arg_x: c_int, arg_y: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    bgSetCenterf(id, x << @intCast(8), y << @intCast(8));
}
pub fn bgSetAffineMatrixScroll(arg_id: c_int, arg_hdx: c_int, arg_vdx: c_int, arg_hdy: c_int, arg_vdy: c_int, arg_scrollx: c_int, arg_scrolly: c_int) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var hdx = arg_hdx;
    _ = &hdx;
    var vdx = arg_vdx;
    _ = &vdx;
    var hdy = arg_hdy;
    _ = &hdy;
    var vdy = arg_vdy;
    _ = &vdy;
    var scrollx = arg_scrollx;
    _ = &scrollx;
    var scrolly = arg_scrolly;
    _ = &scrolly;
    _ = if (!bgIsText(id)) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/background.h", @as(c_int, 1026), "!bgIsText(id)", "Text Backgrounds have no affine matrix and scroll registers.");
    bgTransform[@as(c_uint, @intCast(id))].*.hdx = @as(s16, @bitCast(@as(c_short, @truncate(hdx))));
    bgTransform[@as(c_uint, @intCast(id))].*.vdx = @as(s16, @bitCast(@as(c_short, @truncate(vdx))));
    bgTransform[@as(c_uint, @intCast(id))].*.hdy = @as(s16, @bitCast(@as(c_short, @truncate(hdy))));
    bgTransform[@as(c_uint, @intCast(id))].*.vdy = @as(s16, @bitCast(@as(c_short, @truncate(vdy))));
    bgTransform[@as(c_uint, @intCast(id))].*.dx = scrollx;
    bgTransform[@as(c_uint, @intCast(id))].*.dy = scrolly;
    bgState[@as(c_uint, @intCast(id))].dirty = @as(c_int, 0) != 0;
}
pub fn bgExtPaletteEnable() callconv(.C) void {
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67108864))).* |= @as(vu32, @bitCast(@as(@"u32", @bitCast(@as(c_int, 1) << @intCast(30)))));
}
pub fn bgExtPaletteEnableSub() callconv(.C) void {
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67112960))).* |= @as(vu32, @bitCast(@as(@"u32", @bitCast(@as(c_int, 1) << @intCast(30)))));
}
pub fn bgExtPaletteDisable() callconv(.C) void {
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67108864))).* &= @as(vu32, @bitCast(@as(@"u32", @bitCast(~(@as(c_int, 1) << @intCast(30))))));
}
pub fn bgExtPaletteDisableSub() callconv(.C) void {
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67112960))).* &= @as(vu32, @bitCast(@as(@"u32", @bitCast(~(@as(c_int, 1) << @intCast(30))))));
}
pub extern fn IC_InvalidateAll(...) void;
pub extern fn IC_InvalidateRange(base: ?*const anyopaque, size: @"u32") void;
pub extern fn DC_FlushAll(...) void;
pub extern fn DC_FlushRange(base: ?*const anyopaque, size: @"u32") void;
pub extern fn DC_InvalidateAll(...) void;
pub extern fn DC_InvalidateRange(base: ?*const anyopaque, size: @"u32") void;
pub extern fn sinLerp(angle: s16) s16;
pub extern fn cosLerp(angle: s16) s16;
pub extern fn tanLerp(angle: s16) s32;
pub extern fn asinLerp(par: s16) s16;
pub extern fn acosLerp(par: s16) s16;
pub fn divf32(arg_num: int32, arg_den: int32) callconv(.C) int32 {
    var num = arg_num;
    _ = &num;
    var den = arg_den;
    _ = &den;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).* = 1;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    @as([*c]volatile vs64, @ptrFromInt(@as(c_int, 67109520))).* = @as(int64, @bitCast(@as(c_long, num))) << @intCast(12);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109528))).* = den;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    return @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109536))).*;
}
pub fn mulf32(arg_a: int32, arg_b: int32) callconv(.C) int32 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var result: c_longlong = @as(c_longlong, @bitCast(@as(c_longlong, a))) * @as(c_longlong, @bitCast(@as(c_longlong, b)));
    _ = &result;
    return @as(int32, @bitCast(@as(c_int, @truncate(result >> @intCast(12)))));
}
pub fn sqrtf32(arg_a: int32) callconv(.C) int32 {
    var a = arg_a;
    _ = &a;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109552))).* = 1;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109552))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    @as([*c]volatile vs64, @ptrFromInt(@as(c_int, 67109560))).* = @as(int64, @bitCast(@as(c_long, a))) << @intCast(12);
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109552))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    return @as(int32, @bitCast(@as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109556))).*));
}
pub fn div32(arg_num: int32, arg_den: int32) callconv(.C) int32 {
    var num = arg_num;
    _ = &num;
    var den = arg_den;
    _ = &den;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).* = 0;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109520))).* = num;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109528))).* = den;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    return @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109536))).*;
}
pub fn mod32(arg_num: int32, arg_den: int32) callconv(.C) int32 {
    var num = arg_num;
    _ = &num;
    var den = arg_den;
    _ = &den;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).* = 0;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109520))).* = num;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109528))).* = den;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    return @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109544))).*;
}
pub fn div64(arg_num: int64, arg_den: int32) callconv(.C) int32 {
    var num = arg_num;
    _ = &num;
    var den = arg_den;
    _ = &den;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).* = 1;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    @as([*c]volatile vs64, @ptrFromInt(@as(c_int, 67109520))).* = num;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109528))).* = den;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    return @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109536))).*;
}
pub fn mod64(arg_num: int64, arg_den: int32) callconv(.C) int32 {
    var num = arg_num;
    _ = &num;
    var den = arg_den;
    _ = &den;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).* = 1;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    @as([*c]volatile vs64, @ptrFromInt(@as(c_int, 67109520))).* = num;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109528))).* = den;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109504))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    return @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109544))).*;
}
pub fn sqrt32(arg_a: c_int) callconv(.C) @"u32" {
    var a = arg_a;
    _ = &a;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109552))).* = 0;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109552))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109560))).* = a;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109552))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    return @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109556))).*;
}
pub fn sqrt64(arg_a: c_longlong) callconv(.C) @"u32" {
    var a = arg_a;
    _ = &a;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109552))).* = 1;
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109552))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    @as([*c]volatile vs64, @ptrFromInt(@as(c_int, 67109560))).* = @as(s64, @bitCast(@as(c_long, @truncate(a))));
    while ((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109552))).*))) & (@as(c_int, 1) << @intCast(15))) != 0) {}
    return @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109556))).*;
}
pub fn crossf32(arg_a: [*c]int32, arg_b: [*c]int32, arg_result: [*c]int32) callconv(.C) void {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var result = arg_result;
    _ = &result;
    result[@as(c_uint, @intCast(@as(c_int, 0)))] = mulf32(a[@as(c_uint, @intCast(@as(c_int, 1)))], b[@as(c_uint, @intCast(@as(c_int, 2)))]) - mulf32(b[@as(c_uint, @intCast(@as(c_int, 1)))], a[@as(c_uint, @intCast(@as(c_int, 2)))]);
    result[@as(c_uint, @intCast(@as(c_int, 1)))] = mulf32(a[@as(c_uint, @intCast(@as(c_int, 2)))], b[@as(c_uint, @intCast(@as(c_int, 0)))]) - mulf32(b[@as(c_uint, @intCast(@as(c_int, 2)))], a[@as(c_uint, @intCast(@as(c_int, 0)))]);
    result[@as(c_uint, @intCast(@as(c_int, 2)))] = mulf32(a[@as(c_uint, @intCast(@as(c_int, 0)))], b[@as(c_uint, @intCast(@as(c_int, 1)))]) - mulf32(b[@as(c_uint, @intCast(@as(c_int, 0)))], a[@as(c_uint, @intCast(@as(c_int, 1)))]);
}
pub fn dotf32(arg_a: [*c]int32, arg_b: [*c]int32) callconv(.C) int32 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return (mulf32(a[@as(c_uint, @intCast(@as(c_int, 0)))], b[@as(c_uint, @intCast(@as(c_int, 0)))]) + mulf32(a[@as(c_uint, @intCast(@as(c_int, 1)))], b[@as(c_uint, @intCast(@as(c_int, 1)))])) + mulf32(a[@as(c_uint, @intCast(@as(c_int, 2)))], b[@as(c_uint, @intCast(@as(c_int, 2)))]);
}
pub fn normalizef32(arg_a: [*c]int32) callconv(.C) void {
    var a = arg_a;
    _ = &a;
    var magnitude: int32 = sqrtf32((mulf32(a[@as(c_uint, @intCast(@as(c_int, 0)))], a[@as(c_uint, @intCast(@as(c_int, 0)))]) + mulf32(a[@as(c_uint, @intCast(@as(c_int, 1)))], a[@as(c_uint, @intCast(@as(c_int, 1)))])) + mulf32(a[@as(c_uint, @intCast(@as(c_int, 2)))], a[@as(c_uint, @intCast(@as(c_int, 2)))]));
    _ = &magnitude;
    a[@as(c_uint, @intCast(@as(c_int, 0)))] = divf32(a[@as(c_uint, @intCast(@as(c_int, 0)))], magnitude);
    a[@as(c_uint, @intCast(@as(c_int, 1)))] = divf32(a[@as(c_uint, @intCast(@as(c_int, 1)))], magnitude);
    a[@as(c_uint, @intCast(@as(c_int, 2)))] = divf32(a[@as(c_uint, @intCast(@as(c_int, 2)))], magnitude);
}
pub const fixed12d3 = uint16;
pub const t16 = c_short;
pub const v16 = c_short;
pub const v10 = c_short;
pub const rgb = c_ushort;
pub const struct_m3x3 = extern struct {
    m: [9]c_int = @import("std").mem.zeroes([9]c_int),
};
pub const m3x3 = struct_m3x3;
pub const struct_m4x4 = extern struct {
    m: [16]c_int = @import("std").mem.zeroes([16]c_int),
};
pub const m4x4 = struct_m4x4;
pub const struct_m4x3 = extern struct {
    m: [12]c_int = @import("std").mem.zeroes([12]c_int),
};
pub const m4x3 = struct_m4x3;
pub const struct_GLvector = extern struct {
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    z: c_int = @import("std").mem.zeroes(c_int),
};
pub const GLvector = struct_GLvector;
pub const GL_TRIANGLES: c_int = 0;
pub const GL_QUADS: c_int = 1;
pub const GL_TRIANGLE_STRIP: c_int = 2;
pub const GL_QUAD_STRIP: c_int = 3;
pub const GL_TRIANGLE: c_int = 0;
pub const GL_QUAD: c_int = 1;
pub const GL_GLBEGIN_ENUM = c_uint;
pub const GL_PROJECTION: c_int = 0;
pub const GL_POSITION: c_int = 1;
pub const GL_MODELVIEW: c_int = 2;
pub const GL_TEXTURE: c_int = 3;
pub const GL_MATRIX_MODE_ENUM = c_uint;
pub const GL_AMBIENT: c_int = 1;
pub const GL_DIFFUSE: c_int = 2;
pub const GL_AMBIENT_AND_DIFFUSE: c_int = 3;
pub const GL_SPECULAR: c_int = 4;
pub const GL_SHININESS: c_int = 8;
pub const GL_EMISSION: c_int = 16;
pub const GL_MATERIALS_ENUM = c_uint;
pub const POLY_FORMAT_LIGHT0: c_int = 1;
pub const POLY_FORMAT_LIGHT1: c_int = 2;
pub const POLY_FORMAT_LIGHT2: c_int = 4;
pub const POLY_FORMAT_LIGHT3: c_int = 8;
pub const POLY_MODULATION: c_int = 0;
pub const POLY_DECAL: c_int = 16;
pub const POLY_TOON_HIGHLIGHT: c_int = 32;
pub const POLY_SHADOW: c_int = 48;
pub const POLY_CULL_FRONT: c_int = 64;
pub const POLY_CULL_BACK: c_int = 128;
pub const POLY_CULL_NONE: c_int = 192;
pub const POLY_FOG: c_int = 32768;
pub const enum_GL_POLY_FORMAT_ENUM = c_uint;
pub const TEXTURE_SIZE_8: c_int = 0;
pub const TEXTURE_SIZE_16: c_int = 1;
pub const TEXTURE_SIZE_32: c_int = 2;
pub const TEXTURE_SIZE_64: c_int = 3;
pub const TEXTURE_SIZE_128: c_int = 4;
pub const TEXTURE_SIZE_256: c_int = 5;
pub const TEXTURE_SIZE_512: c_int = 6;
pub const TEXTURE_SIZE_1024: c_int = 7;
pub const enum_GL_TEXTURE_SIZE_ENUM = c_uint;
pub const GL_TEXTURE_WRAP_S: c_int = 65536;
pub const GL_TEXTURE_WRAP_T: c_int = 131072;
pub const GL_TEXTURE_FLIP_S: c_int = 262144;
pub const GL_TEXTURE_FLIP_T: c_int = 524288;
pub const GL_TEXTURE_COLOR0_TRANSPARENT: c_int = 536870912;
pub const TEXGEN_OFF: c_int = 0;
pub const TEXGEN_TEXCOORD: c_int = 1073741824;
pub const TEXGEN_NORMAL: c_int = -2147483648;
pub const TEXGEN_POSITION: c_int = -1073741824;
pub const GL_TEXTURE_PARAM_ENUM = c_int;
pub const GL_NOTEXTURE: c_int = 0;
pub const GL_RGB32_A3: c_int = 1;
pub const GL_RGB4: c_int = 2;
pub const GL_RGB16: c_int = 3;
pub const GL_RGB256: c_int = 4;
pub const GL_COMPRESSED: c_int = 5;
pub const GL_RGB8_A5: c_int = 6;
pub const GL_RGBA: c_int = 7;
pub const GL_RGB: c_int = 8;
pub const GL_TEXTURE_TYPE_ENUM = c_uint;
pub const GL_COLOR_TABLE_FORMAT_EXT: c_int = 0;
pub const GL_COLOR_TABLE_WIDTH_EXT: c_int = 1;
pub const enum_GL_TEXTURE_PALETTE_PARAM_ENUM = c_uint;
pub const GL_TEXTURE_2D: c_int = 1;
pub const GL_TOON_HIGHLIGHT: c_int = 2;
pub const GL_ALPHA_TEST: c_int = 4;
pub const GL_BLEND: c_int = 8;
pub const GL_ANTIALIAS: c_int = 16;
pub const GL_OUTLINE: c_int = 32;
pub const GL_FOG_ONLY_ALPHA: c_int = 64;
pub const GL_FOG: c_int = 128;
pub const GL_COLOR_UNDERFLOW: c_int = 4096;
pub const GL_POLY_OVERFLOW: c_int = 8192;
pub const GL_CLEAR_BMP: c_int = 16384;
pub const enum_DISP3DCNT_ENUM = c_uint;
pub const GL_GET_VERTEX_RAM_COUNT: c_int = 0;
pub const GL_GET_POLYGON_RAM_COUNT: c_int = 1;
pub const GL_GET_MATRIX_VECTOR: c_int = 2;
pub const GL_GET_MATRIX_POSITION: c_int = 3;
pub const GL_GET_MATRIX_PROJECTION: c_int = 4;
pub const GL_GET_MATRIX_CLIP: c_int = 5;
pub const GL_GET_TEXTURE_WIDTH: c_int = 6;
pub const GL_GET_TEXTURE_HEIGHT: c_int = 7;
pub const GL_GET_ENUM = c_uint;
pub const GL_TRANS_MANUALSORT: c_int = 1;
pub const GL_WBUFFERING: c_int = 2;
pub const enum_GLFLUSH_ENUM = c_uint;
pub const struct_s_SingleBlock = extern struct {
    indexOut: uint32 = @import("std").mem.zeroes(uint32),
    AddrSet: [*c]uint8 = @import("std").mem.zeroes([*c]uint8),
    node: [4][*c]struct_s_SingleBlock = @import("std").mem.zeroes([4][*c]struct_s_SingleBlock),
    blockSize: uint32 = @import("std").mem.zeroes(uint32),
};
pub const s_SingleBlock = struct_s_SingleBlock;
pub const struct_s_vramBlock = extern struct {
    startAddr: [*c]uint8 = @import("std").mem.zeroes([*c]uint8),
    endAddr: [*c]uint8 = @import("std").mem.zeroes([*c]uint8),
    firstBlock: [*c]struct_s_SingleBlock = @import("std").mem.zeroes([*c]struct_s_SingleBlock),
    firstEmpty: [*c]struct_s_SingleBlock = @import("std").mem.zeroes([*c]struct_s_SingleBlock),
    firstAlloc: [*c]struct_s_SingleBlock = @import("std").mem.zeroes([*c]struct_s_SingleBlock),
    lastExamined: [*c]struct_s_SingleBlock = @import("std").mem.zeroes([*c]struct_s_SingleBlock),
    lastExaminedAddr: [*c]uint8 = @import("std").mem.zeroes([*c]uint8),
    lastExaminedSize: uint32 = @import("std").mem.zeroes(uint32),
    blockPtrs: DynamicArray = @import("std").mem.zeroes(DynamicArray),
    deallocBlocks: DynamicArray = @import("std").mem.zeroes(DynamicArray),
    blockCount: uint32 = @import("std").mem.zeroes(uint32),
    deallocCount: uint32 = @import("std").mem.zeroes(uint32),
};
pub const s_vramBlock = struct_s_vramBlock;
pub const struct_gl_texture_data = extern struct {
    vramAddr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    texIndex: uint32 = @import("std").mem.zeroes(uint32),
    texIndexExt: uint32 = @import("std").mem.zeroes(uint32),
    palIndex: c_int = @import("std").mem.zeroes(c_int),
    texFormat: uint32 = @import("std").mem.zeroes(uint32),
    texSize: uint32 = @import("std").mem.zeroes(uint32),
};
pub const gl_texture_data = struct_gl_texture_data;
pub const struct_gl_palette_data = extern struct {
    vramAddr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    palIndex: uint32 = @import("std").mem.zeroes(uint32),
    addr: uint16 = @import("std").mem.zeroes(uint16),
    palSize: uint16 = @import("std").mem.zeroes(uint16),
    connectCount: uint32 = @import("std").mem.zeroes(uint32),
};
pub const gl_palette_data = struct_gl_palette_data;
pub const struct_gl_hidden_globals = extern struct {
    matrixMode: GL_MATRIX_MODE_ENUM = @import("std").mem.zeroes(GL_MATRIX_MODE_ENUM),
    vramBlocks: [2][*c]s_vramBlock = @import("std").mem.zeroes([2][*c]s_vramBlock),
    vramLock: [2]c_int = @import("std").mem.zeroes([2]c_int),
    texturePtrs: DynamicArray = @import("std").mem.zeroes(DynamicArray),
    palettePtrs: DynamicArray = @import("std").mem.zeroes(DynamicArray),
    deallocTex: DynamicArray = @import("std").mem.zeroes(DynamicArray),
    deallocPal: DynamicArray = @import("std").mem.zeroes(DynamicArray),
    deallocTexSize: uint32 = @import("std").mem.zeroes(uint32),
    deallocPalSize: uint32 = @import("std").mem.zeroes(uint32),
    activeTexture: c_int = @import("std").mem.zeroes(c_int),
    activePalette: c_int = @import("std").mem.zeroes(c_int),
    texCount: c_int = @import("std").mem.zeroes(c_int),
    palCount: c_int = @import("std").mem.zeroes(c_int),
    clearColor: @"u32" = @import("std").mem.zeroes(@"u32"),
    isActive: uint8 = @import("std").mem.zeroes(uint8),
};
pub const gl_hidden_globals = struct_gl_hidden_globals;
pub extern var glGlobalData: gl_hidden_globals;
pub var glGlob: [*c]gl_hidden_globals = &glGlobalData;
pub extern fn glRotatef32i(angle: c_int, x: int32, y: int32, z: int32) void;
pub extern fn glTexImage2D(target: c_int, empty1: c_int, @"type": GL_TEXTURE_TYPE_ENUM, sizeX: c_int, sizeY: c_int, empty2: c_int, param: c_int, texture: ?*const anyopaque) c_int;
pub extern fn glColorTableEXT(target: c_int, empty1: c_int, width: uint16, empty2: c_int, empty3: c_int, table: [*c]const uint16) void;
pub extern fn glColorSubTableEXT(target: c_int, start: c_int, count: c_int, empty1: c_int, empty2: c_int, data: [*c]const uint16) void;
pub extern fn glGetColorTableEXT(target: c_int, empty1: c_int, empty2: c_int, table: [*c]uint16) void;
pub extern fn glAssignColorTable(target: c_int, name: c_int) void;
pub extern fn glTexParameter(target: c_int, param: c_int) void;
pub extern fn glGetTexParameter() @"u32";
pub extern fn glGetColorTableParameterEXT(target: c_int, pname: c_int, params: [*c]c_int) void;
pub extern fn glGetTexturePointer(name: c_int) ?*anyopaque;
pub extern fn glBindTexture(target: c_int, name: c_int) void;
pub extern fn glGenTextures(n: c_int, names: [*c]c_int) c_int;
pub extern fn glDeleteTextures(n: c_int, names: [*c]c_int) c_int;
pub extern fn glResetTextures() void;
pub extern fn glLockVRAMBank(addr: [*c]uint16) c_int;
pub extern fn glUnlockVRAMBank(addr: [*c]uint16) c_int;
pub extern fn glTexCoord2f32(u: int32, v: int32) void;
pub extern fn glMaterialf(mode: GL_MATERIALS_ENUM, color: rgb) void;
pub extern fn glInit_C() void;
pub extern fn glGetGlobals(...) [*c]gl_hidden_globals;
pub fn POLY_ALPHA(arg_n: @"u32") callconv(.C) @"u32" {
    var n = arg_n;
    _ = &n;
    return n << @intCast(16);
}
pub fn POLY_ID(arg_n: @"u32") callconv(.C) @"u32" {
    var n = arg_n;
    _ = &n;
    return n << @intCast(24);
}
pub fn glBegin(arg_mode: GL_GLBEGIN_ENUM) callconv(.C) void {
    var mode = arg_mode;
    _ = &mode;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110144))).* = @as(@"u32", @bitCast(mode));
}
pub fn glEnd() callconv(.C) void {
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110148))).* = 0;
}
pub fn glClearDepth(arg_depth: fixed12d3) callconv(.C) void {
    var depth = arg_depth;
    _ = &depth;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109716))).* = depth;
}
pub fn glColor3b(arg_red: uint8, arg_green: uint8, arg_blue: uint8) callconv(.C) void {
    var red = arg_red;
    _ = &red;
    var green = arg_green;
    _ = &green;
    var blue = arg_blue;
    _ = &blue;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110016))).* = @as(@"u32", @bitCast(((@as(c_int, @bitCast(@as(c_uint, red))) >> @intCast(3)) | ((@as(c_int, @bitCast(@as(c_uint, green))) >> @intCast(3)) << @intCast(5))) | ((@as(c_int, @bitCast(@as(c_uint, blue))) >> @intCast(3)) << @intCast(10))));
}
pub fn glColor(arg_color: rgb) callconv(.C) void {
    var color = arg_color;
    _ = &color;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110016))).* = @as(@"u32", @bitCast(@as(c_uint, color)));
}
pub fn glVertex3v16(arg_x: v16, arg_y: v16, arg_z: v16) callconv(.C) void {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var z = arg_z;
    _ = &z;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110028))).* = @as(@"u32", @bitCast((@as(c_int, @bitCast(@as(c_int, y))) << @intCast(16)) | (@as(c_int, @bitCast(@as(c_int, x))) & @as(c_int, 65535))));
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110028))).* = @as(@"u32", @bitCast(@as(c_int, z)));
}
pub fn glTexCoord2t16(arg_u: t16, arg_v: t16) callconv(.C) void {
    var u = arg_u;
    _ = &u;
    var v = arg_v;
    _ = &v;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110024))).* = @as(@"u32", @bitCast((@as(c_int, @bitCast(@as(c_int, u))) & @as(c_int, 65535)) | (@as(c_int, @bitCast(@as(c_int, v))) << @intCast(16))));
}
pub fn glPushMatrix() callconv(.C) void {
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109956))).* = 0;
}
pub fn glPopMatrix(arg_num: c_int) callconv(.C) void {
    var num = arg_num;
    _ = &num;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109960))).* = @as(@"u32", @bitCast(num));
}
pub fn glRestoreMatrix(arg_index_1: c_int) callconv(.C) void {
    var index_1 = arg_index_1;
    _ = &index_1;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109968))).* = @as(@"u32", @bitCast(index_1));
}
pub fn glStoreMatrix(arg_index_1: c_int) callconv(.C) void {
    var index_1 = arg_index_1;
    _ = &index_1;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109964))).* = @as(@"u32", @bitCast(index_1));
}
pub fn glScalev(arg_v: [*c]const GLvector) callconv(.C) void {
    var v = arg_v;
    _ = &v;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109996))).* = v.*.x;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109996))).* = v.*.y;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109996))).* = v.*.z;
}
pub fn glTranslatev(arg_v: [*c]const GLvector) callconv(.C) void {
    var v = arg_v;
    _ = &v;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110000))).* = v.*.x;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110000))).* = v.*.y;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110000))).* = v.*.z;
}
pub fn glTranslatef32(arg_x: c_int, arg_y: c_int, arg_z: c_int) callconv(.C) void {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var z = arg_z;
    _ = &z;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110000))).* = x;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110000))).* = y;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110000))).* = z;
}
pub fn glScalef32(arg_x: c_int, arg_y: c_int, arg_z: c_int) callconv(.C) void {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var z = arg_z;
    _ = &z;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109996))).* = x;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109996))).* = y;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109996))).* = z;
}
pub fn glLight(arg_id: c_int, arg_color: rgb, arg_x: v10, arg_y: v10, arg_z: v10) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var color = arg_color;
    _ = &color;
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var z = arg_z;
    _ = &z;
    id = (id & @as(c_int, 3)) << @intCast(30);
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110088))).* = @as(@"u32", @bitCast(((id | ((@as(c_int, @bitCast(@as(c_int, z))) & @as(c_int, 1023)) << @intCast(20))) | ((@as(c_int, @bitCast(@as(c_int, y))) & @as(c_int, 1023)) << @intCast(10))) | (@as(c_int, @bitCast(@as(c_int, x))) & @as(c_int, 1023))));
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110092))).* = @as(@"u32", @bitCast(id | @as(c_int, @bitCast(@as(c_uint, color)))));
}
pub fn glNormal(arg_normal: @"u32") callconv(.C) void {
    var normal = arg_normal;
    _ = &normal;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110020))).* = normal;
}
pub fn glLoadIdentity() callconv(.C) void {
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109972))).* = 0;
}
pub fn glMatrixMode(arg_mode: GL_MATRIX_MODE_ENUM) callconv(.C) void {
    var mode = arg_mode;
    _ = &mode;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109952))).* = @as(@"u32", @bitCast(mode));
}
pub fn glViewport(arg_x1: uint8, arg_y1: uint8, arg_x2: uint8, arg_y2: uint8) callconv(.C) void {
    var x1 = arg_x1;
    _ = &x1;
    var y1 = arg_y1;
    _ = &y1;
    var x2 = arg_x2;
    _ = &x2;
    var y2 = arg_y2;
    _ = &y2;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110272))).* = @as(@"u32", @bitCast(((@as(c_int, @bitCast(@as(c_uint, x1))) + (@as(c_int, @bitCast(@as(c_uint, y1))) << @intCast(8))) + (@as(c_int, @bitCast(@as(c_uint, x2))) << @intCast(16))) + (@as(c_int, @bitCast(@as(c_uint, y2))) << @intCast(24))));
} // /opt/devkitpro/libnds/include/nds/arm9/videoGL.h:731:26: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /opt/devkitpro/libnds/include/nds/arm9/videoGL.h:731:6: warning: unable to translate function, demoted to extern
pub extern fn glFlush(arg_mode: @"u32") callconv(.C) void;
pub fn glMaterialShinyness() callconv(.C) void {
    var shiny32: [32]@"u32" = undefined;
    _ = &shiny32;
    var shiny8: [*c]@"u8" = @as([*c]@"u8", @ptrCast(@alignCast(@as([*c]@"u32", @ptrCast(@alignCast(&shiny32))))));
    _ = &shiny8;
    var i: c_int = undefined;
    _ = &i;
    {
        i = 0;
        while (i < (@as(c_int, 128) * @as(c_int, 2))) : (i += @as(c_int, 2)) {
            (blk: {
                const tmp = i >> @intCast(1);
                if (tmp >= 0) break :blk shiny8 + @as(usize, @intCast(tmp)) else break :blk shiny8 - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = @as(@"u8", @bitCast(@as(i8, @truncate(i))));
        }
    }
    {
        i = 0;
        while (i < @divTrunc(@as(c_int, 128), @as(c_int, 4))) : (i += 1) {
            @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110096))).* = shiny32[@as(c_uint, @intCast(i))];
        }
    }
}
pub fn glCallList(arg_list: [*c]const @"u32") callconv(.C) void {
    var list = arg_list;
    _ = &list;
    _ = if (list != @as([*c]const @"u32", @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/videoGL.h", @as(c_int, 757), "list != NULL", "glCallList received a null display list pointer");
    var count: @"u32" = (blk: {
        const ref = &list;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).*;
    _ = &count;
    _ = if (count != @as(@"u32", @bitCast(@as(c_int, 0)))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/videoGL.h", @as(c_int, 761), "count != 0", "glCallList received a display list of size 0");
    DC_FlushRange(@as(?*const anyopaque, @ptrCast(list)), count *% @as(@"u32", @bitCast(@as(c_int, 4))));
    while (((((@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 0) * @as(c_int, 12)))).* & @as(u32, @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 31))))) != 0) or ((@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 1) * @as(c_int, 12)))).* & @as(u32, @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 31))))) != 0)) or ((@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 2) * @as(c_int, 12)))).* & @as(u32, @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 31))))) != 0)) or ((@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 3) * @as(c_int, 12)))).* & @as(u32, @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 31))))) != 0)) {}
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109040) + (@as(c_int, 0) * @as(c_int, 12)))).* = @as(@"u32", @intCast(@intFromPtr(list)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109044) + (@as(c_int, 0) * @as(c_int, 12)))).* = @as(u32, @bitCast(@as(c_int, 67109888)));
    @as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 0) * @as(c_int, 12)))).* = @as(@"u32", @bitCast((((@as(c_int, 1) << @intCast(@as(c_int, 31))) | (@as(c_int, 1) << @intCast(@as(c_int, 26)))) | (@as(c_int, 1) << @intCast(@as(c_int, 22)))) | (@as(c_int, 7) << @intCast(27)))) | count;
    while ((@as([*c]volatile vuint32, @ptrFromInt(@as(c_int, 67109048) + (@as(c_int, 0) * @as(c_int, 12)))).* & @as(u32, @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 31))))) != 0) {}
}
pub fn glPolyFmt(arg_params: @"u32") callconv(.C) void {
    var params = arg_params;
    _ = &params;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110052))).* = params;
}
pub fn glEnable(arg_bits: c_int) callconv(.C) void {
    var bits = arg_bits;
    _ = &bits;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67108960))).* |= @as(vu16, @bitCast(@as(c_short, @truncate(bits))));
}
pub fn glDisable(arg_bits: c_int) callconv(.C) void {
    var bits = arg_bits;
    _ = &bits;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67108960))).* &= @as(vu16, @bitCast(@as(c_short, @truncate(~bits))));
}
pub fn glFogShift(arg_shift: c_int) callconv(.C) void {
    var shift = arg_shift;
    _ = &shift;
    _ = if ((shift >= @as(c_int, 0)) and (shift < @as(c_int, 16))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/videoGL.h", @as(c_int, 806), "shift>=0 && shift<16", "glFogShift is out of range");
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67108960))).* = @as(@"u16", @bitCast(@as(c_short, @truncate((@as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67108960))).*))) & @as(c_int, 61695)) | (shift << @intCast(8))))));
}
pub fn glFogOffset(arg_offset: c_int) callconv(.C) void {
    var offset = arg_offset;
    _ = &offset;
    _ = if ((offset >= @as(c_int, 0)) and (offset < @as(c_int, 32768))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/videoGL.h", @as(c_int, 815), "offset>=0 && offset<0x8000", "glFogOffset is out of range");
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109724))).* = @as(@"u32", @bitCast(offset));
}
pub fn glFogColor(arg_red: uint8, arg_green: uint8, arg_blue: uint8, arg_alpha: uint8) callconv(.C) void {
    var red = arg_red;
    _ = &red;
    var green = arg_green;
    _ = &green;
    var blue = arg_blue;
    _ = &blue;
    var alpha = arg_alpha;
    _ = &alpha;
    _ = if (@as(c_int, @bitCast(@as(c_uint, red))) < @as(c_int, 32)) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/videoGL.h", @as(c_int, 827), "red<32", "glFogColor red is out of range");
    _ = if (@as(c_int, @bitCast(@as(c_uint, green))) < @as(c_int, 32)) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/videoGL.h", @as(c_int, 828), "green<32", "glFogColor green is out of range");
    _ = if (@as(c_int, @bitCast(@as(c_uint, blue))) < @as(c_int, 32)) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/videoGL.h", @as(c_int, 829), "blue<32", "glFogColor blue is out of range");
    _ = if (@as(c_int, @bitCast(@as(c_uint, alpha))) < @as(c_int, 32)) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/videoGL.h", @as(c_int, 830), "alpha<32", "glFogColor alpha is out of range");
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109720))).* = @as(@"u32", @bitCast(((@as(c_int, @bitCast(@as(c_uint, red))) | (@as(c_int, @bitCast(@as(c_uint, green))) << @intCast(5))) | (@as(c_int, @bitCast(@as(c_uint, blue))) << @intCast(10))) | (@as(c_int, @bitCast(@as(c_uint, alpha))) << @intCast(16))));
}
pub fn glFogDensity(arg_index_1: c_int, arg_density: c_int) callconv(.C) void {
    var index_1 = arg_index_1;
    _ = &index_1;
    var density = arg_density;
    _ = &density;
    _ = if ((index_1 >= @as(c_int, 0)) and (index_1 < @as(c_int, 32))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/videoGL.h", @as(c_int, 840), "index>= 0 && index<32", "glFogDensity index is out of range");
    _ = if ((index_1 >= @as(c_int, 0)) and (density < @as(c_int, 128))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/videoGL.h", @as(c_int, 841), "index>= 0 && density<128", "glFogDensity density is out of range");
    (blk: {
        const tmp = index_1;
        if (tmp >= 0) break :blk @as([*c]volatile vu8, @ptrFromInt(@as(c_int, 67109728))) + @as(usize, @intCast(tmp)) else break :blk @as([*c]volatile vu8, @ptrFromInt(@as(c_int, 67109728))) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = @as(@"u8", @bitCast(@as(i8, @truncate(density))));
}
pub fn glLoadMatrix4x4(arg_m: [*c]const m4x4) callconv(.C) void {
    var m = arg_m;
    _ = &m;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 0)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 1)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 2)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 3)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 4)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 5)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 6)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 7)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 8)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 9)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 10)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 11)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 12)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 13)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 14)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109976))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 15)))];
}
pub fn glLoadMatrix4x3(arg_m: [*c]const m4x3) callconv(.C) void {
    var m = arg_m;
    _ = &m;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 0)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 1)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 2)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 3)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 4)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 5)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 6)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 7)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 8)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 9)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 10)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109980))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 11)))];
}
pub fn glMultMatrix4x4(arg_m: [*c]const m4x4) callconv(.C) void {
    var m = arg_m;
    _ = &m;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 0)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 1)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 2)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 3)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 4)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 5)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 6)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 7)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 8)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 9)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 10)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 11)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 12)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 13)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 14)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 15)))];
}
pub fn glMultMatrix4x3(arg_m: [*c]const m4x3) callconv(.C) void {
    var m = arg_m;
    _ = &m;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 0)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 1)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 2)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 3)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 4)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 5)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 6)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 7)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 8)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 9)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 10)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 11)))];
}
pub fn glMultMatrix3x3(arg_m: [*c]const m3x3) callconv(.C) void {
    var m = arg_m;
    _ = &m;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 0)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 1)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 2)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 3)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 4)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 5)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 6)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 7)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = m.*.m[@as(c_uint, @intCast(@as(c_int, 8)))];
}
pub fn glRotateXi(arg_angle: c_int) callconv(.C) void {
    var angle = arg_angle;
    _ = &angle;
    var sine: c_int = @as(c_int, @bitCast(@as(c_int, sinLerp(@as(s16, @bitCast(@as(c_short, @truncate(angle))))))));
    _ = &sine;
    var cosine: c_int = @as(c_int, @bitCast(@as(c_int, cosLerp(@as(s16, @bitCast(@as(c_short, @truncate(angle))))))));
    _ = &cosine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = @as(c_int, 1) * (@as(c_int, 1) << @intCast(12));
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = cosine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = sine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = -sine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = cosine;
}
pub fn glRotateYi(arg_angle: c_int) callconv(.C) void {
    var angle = arg_angle;
    _ = &angle;
    var sine: c_int = @as(c_int, @bitCast(@as(c_int, sinLerp(@as(s16, @bitCast(@as(c_short, @truncate(angle))))))));
    _ = &sine;
    var cosine: c_int = @as(c_int, @bitCast(@as(c_int, cosLerp(@as(s16, @bitCast(@as(c_short, @truncate(angle))))))));
    _ = &cosine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = cosine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = -sine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = @as(c_int, 1) * (@as(c_int, 1) << @intCast(12));
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = sine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = cosine;
}
pub fn glRotateZi(arg_angle: c_int) callconv(.C) void {
    var angle = arg_angle;
    _ = &angle;
    var sine: c_int = @as(c_int, @bitCast(@as(c_int, sinLerp(@as(s16, @bitCast(@as(c_short, @truncate(angle))))))));
    _ = &sine;
    var cosine: c_int = @as(c_int, @bitCast(@as(c_int, cosLerp(@as(s16, @bitCast(@as(c_short, @truncate(angle))))))));
    _ = &cosine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = cosine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = sine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = -sine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = cosine;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109992))).* = @as(c_int, 1) * (@as(c_int, 1) << @intCast(12));
}
pub fn glOrthof32(arg_left: c_int, arg_right: c_int, arg_bottom: c_int, arg_top: c_int, arg_zNear: c_int, arg_zFar: c_int) callconv(.C) void {
    var left = arg_left;
    _ = &left;
    var right = arg_right;
    _ = &right;
    var bottom = arg_bottom;
    _ = &bottom;
    var top = arg_top;
    _ = &top;
    var zNear = arg_zNear;
    _ = &zNear;
    var zFar = arg_zFar;
    _ = &zFar;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = divf32(@as(c_int, 2) * (@as(c_int, 1) << @intCast(12)), right - left);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = divf32(@as(c_int, 2) * (@as(c_int, 1) << @intCast(12)), top - bottom);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = divf32(-@as(c_int, 2) * (@as(c_int, 1) << @intCast(12)), zFar - zNear);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = -divf32(right + left, right - left);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = -divf32(top + bottom, top - bottom);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = -divf32(zFar + zNear, zFar - zNear);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = @as(c_int, @intFromFloat(1.0 * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12)))));
}
pub fn gluLookAtf32(arg_eyex: c_int, arg_eyey: c_int, arg_eyez: c_int, arg_lookAtx: c_int, arg_lookAty: c_int, arg_lookAtz: c_int, arg_upx: c_int, arg_upy: c_int, arg_upz: c_int) callconv(.C) void {
    var eyex = arg_eyex;
    _ = &eyex;
    var eyey = arg_eyey;
    _ = &eyey;
    var eyez = arg_eyez;
    _ = &eyez;
    var lookAtx = arg_lookAtx;
    _ = &lookAtx;
    var lookAty = arg_lookAty;
    _ = &lookAty;
    var lookAtz = arg_lookAtz;
    _ = &lookAtz;
    var upx = arg_upx;
    _ = &upx;
    var upy = arg_upy;
    _ = &upy;
    var upz = arg_upz;
    _ = &upz;
    var side: [3]int32 = undefined;
    _ = &side;
    var forward: [3]int32 = undefined;
    _ = &forward;
    var up: [3]int32 = undefined;
    _ = &up;
    var eye: [3]int32 = undefined;
    _ = &eye;
    forward[@as(c_uint, @intCast(@as(c_int, 0)))] = eyex - lookAtx;
    forward[@as(c_uint, @intCast(@as(c_int, 1)))] = eyey - lookAty;
    forward[@as(c_uint, @intCast(@as(c_int, 2)))] = eyez - lookAtz;
    normalizef32(@as([*c]int32, @ptrCast(@alignCast(&forward))));
    up[@as(c_uint, @intCast(@as(c_int, 0)))] = upx;
    up[@as(c_uint, @intCast(@as(c_int, 1)))] = upy;
    up[@as(c_uint, @intCast(@as(c_int, 2)))] = upz;
    eye[@as(c_uint, @intCast(@as(c_int, 0)))] = eyex;
    eye[@as(c_uint, @intCast(@as(c_int, 1)))] = eyey;
    eye[@as(c_uint, @intCast(@as(c_int, 2)))] = eyez;
    crossf32(@as([*c]int32, @ptrCast(@alignCast(&up))), @as([*c]int32, @ptrCast(@alignCast(&forward))), @as([*c]int32, @ptrCast(@alignCast(&side))));
    normalizef32(@as([*c]int32, @ptrCast(@alignCast(&side))));
    crossf32(@as([*c]int32, @ptrCast(@alignCast(&forward))), @as([*c]int32, @ptrCast(@alignCast(&side))), @as([*c]int32, @ptrCast(@alignCast(&up))));
    glMatrixMode(@as(c_uint, @bitCast(GL_MODELVIEW)));
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = side[@as(c_uint, @intCast(@as(c_int, 0)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = up[@as(c_uint, @intCast(@as(c_int, 0)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = forward[@as(c_uint, @intCast(@as(c_int, 0)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = side[@as(c_uint, @intCast(@as(c_int, 1)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = up[@as(c_uint, @intCast(@as(c_int, 1)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = forward[@as(c_uint, @intCast(@as(c_int, 1)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = side[@as(c_uint, @intCast(@as(c_int, 2)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = up[@as(c_uint, @intCast(@as(c_int, 2)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = forward[@as(c_uint, @intCast(@as(c_int, 2)))];
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = -dotf32(@as([*c]int32, @ptrCast(@alignCast(&eye))), @as([*c]int32, @ptrCast(@alignCast(&side))));
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = -dotf32(@as([*c]int32, @ptrCast(@alignCast(&eye))), @as([*c]int32, @ptrCast(@alignCast(&up))));
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109988))).* = -dotf32(@as([*c]int32, @ptrCast(@alignCast(&eye))), @as([*c]int32, @ptrCast(@alignCast(&forward))));
}
pub fn glFrustumf32(arg_left: c_int, arg_right: c_int, arg_bottom: c_int, arg_top: c_int, arg_near: c_int, arg_far: c_int) callconv(.C) void {
    var left = arg_left;
    _ = &left;
    var right = arg_right;
    _ = &right;
    var bottom = arg_bottom;
    _ = &bottom;
    var top = arg_top;
    _ = &top;
    var near = arg_near;
    _ = &near;
    var far = arg_far;
    _ = &far;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = divf32(@as(c_int, 2) * near, right - left);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = divf32(@as(c_int, 2) * near, top - bottom);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = divf32(right + left, right - left);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = divf32(top + bottom, top - bottom);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = -divf32(far + near, far - near);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = @as(c_int, @intFromFloat(-1.0 * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12)))));
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = -divf32(@as(c_int, 2) * mulf32(far, near), far - near);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
}
pub fn gluPerspectivef32(arg_fovy: c_int, arg_aspect: c_int, arg_zNear: c_int, arg_zFar: c_int) callconv(.C) void {
    var fovy = arg_fovy;
    _ = &fovy;
    var aspect = arg_aspect;
    _ = &aspect;
    var zNear = arg_zNear;
    _ = &zNear;
    var zFar = arg_zFar;
    _ = &zFar;
    var xmin: c_int = undefined;
    _ = &xmin;
    var xmax: c_int = undefined;
    _ = &xmax;
    var ymin: c_int = undefined;
    _ = &ymin;
    var ymax: c_int = undefined;
    _ = &ymax;
    ymax = mulf32(zNear, tanLerp(@as(s16, @bitCast(@as(c_short, @truncate(fovy >> @intCast(1)))))));
    ymin = -ymax;
    xmin = mulf32(ymin, aspect);
    xmax = mulf32(ymax, aspect);
    glFrustumf32(xmin, xmax, ymin, ymax, zNear, zFar);
}
pub fn gluPickMatrix(arg_x: c_int, arg_y: c_int, arg_width: c_int, arg_height: c_int, viewport: [*c]const c_int) callconv(.C) void {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var width = arg_width;
    _ = &width;
    var height = arg_height;
    _ = &height;
    _ = &viewport;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = @divTrunc(viewport[@as(c_uint, @intCast(@as(c_int, 2)))] * (@as(c_int, 1) << @intCast(12)), width);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = @divTrunc(viewport[@as(c_uint, @intCast(@as(c_int, 3)))] * (@as(c_int, 1) << @intCast(12)), height);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = @as(c_int, 1) * (@as(c_int, 1) << @intCast(12));
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = @divTrunc((viewport[@as(c_uint, @intCast(@as(c_int, 2)))] + ((viewport[@as(c_uint, @intCast(@as(c_int, 0)))] - x) << @intCast(1))) * (@as(c_int, 1) << @intCast(12)), width);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = @divTrunc((viewport[@as(c_uint, @intCast(@as(c_int, 3)))] + ((viewport[@as(c_uint, @intCast(@as(c_int, 1)))] - y) << @intCast(1))) * (@as(c_int, 1) << @intCast(12)), height);
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = 0;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109984))).* = @as(c_int, 1) * (@as(c_int, 1) << @intCast(12));
}
pub fn glResetMatrixStack() callconv(.C) void {
    while ((@as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110400))).* & @as(@"u32", @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 14))))) != 0) {
        @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110400))).* |= @as(vu32, @bitCast(@as(@"u32", @bitCast(@as(c_int, 1) << @intCast(15)))));
    }
    if ((@as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110400))).* & @as(@"u32", @bitCast(@as(c_int, 1) << @intCast(13)))) != @as(@"u32", @bitCast(@as(c_int, 0)))) {
        glMatrixMode(@as(c_uint, @bitCast(GL_PROJECTION)));
        glPopMatrix(@as(c_int, 1));
    }
    glMatrixMode(@as(c_uint, @bitCast(GL_MODELVIEW)));
    glPopMatrix(@as(c_int, @bitCast((@as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110400))).* >> @intCast(8)) & @as(@"u32", @bitCast(@as(c_int, 31))))));
    glMatrixMode(@as(c_uint, @bitCast(GL_MODELVIEW)));
    glLoadIdentity();
    glMatrixMode(@as(c_uint, @bitCast(GL_PROJECTION)));
    glLoadIdentity();
    glMatrixMode(@as(c_uint, @bitCast(GL_TEXTURE)));
    glLoadIdentity();
}
pub fn glSetOutlineColor(arg_id: c_int, arg_color: rgb) callconv(.C) void {
    var id = arg_id;
    _ = &id;
    var color = arg_color;
    _ = &color;
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109680))) + @as(usize, @intCast(tmp)) else break :blk @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109680))) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = color;
}
pub fn glSetToonTable(arg_table: [*c]const uint16) callconv(.C) void {
    var table = arg_table;
    _ = &table;
    var i: c_int = undefined;
    _ = &i;
    {
        i = 0;
        while (i < @as(c_int, 32)) : (i += 1) {
            (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109760))) + @as(usize, @intCast(tmp)) else break :blk @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109760))) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk table + @as(usize, @intCast(tmp)) else break :blk table - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*;
        }
    }
}
pub fn glSetToonTableRange(arg_start: c_int, arg_end: c_int, arg_color: rgb) callconv(.C) void {
    var start = arg_start;
    _ = &start;
    var end = arg_end;
    _ = &end;
    var color = arg_color;
    _ = &color;
    var i: c_int = undefined;
    _ = &i;
    {
        i = start;
        while (i <= end) : (i += 1) {
            (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109760))) + @as(usize, @intCast(tmp)) else break :blk @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109760))) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = color;
        }
    }
}
pub fn glGetFixed(param: GL_GET_ENUM, arg_f: [*c]c_int) callconv(.C) void {
    _ = &param;
    var f = arg_f;
    _ = &f;
    var i: c_int = undefined;
    _ = &i;
    while (true) {
        switch (param) {
            @as(c_uint, @bitCast(@as(c_int, 2))) => {
                while ((@as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110400))).* & @as(@"u32", @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 27))))) != 0) {}
                {
                    i = 0;
                    while (i < @as(c_int, 9)) : (i += 1) {
                        (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk f + @as(usize, @intCast(tmp)) else break :blk f - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110528))) + @as(usize, @intCast(tmp)) else break :blk @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110528))) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*;
                    }
                }
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 5))) => {
                while ((@as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110400))).* & @as(@"u32", @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 27))))) != 0) {}
                {
                    i = 0;
                    while (i < @as(c_int, 16)) : (i += 1) {
                        (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk f + @as(usize, @intCast(tmp)) else break :blk f - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110464))) + @as(usize, @intCast(tmp)) else break :blk @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110464))) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*;
                    }
                }
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 4))) => {
                glMatrixMode(@as(c_uint, @bitCast(GL_POSITION)));
                glPushMatrix();
                glLoadIdentity();
                while ((@as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110400))).* & @as(@"u32", @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 27))))) != 0) {}
                {
                    i = 0;
                    while (i < @as(c_int, 16)) : (i += 1) {
                        (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk f + @as(usize, @intCast(tmp)) else break :blk f - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110464))) + @as(usize, @intCast(tmp)) else break :blk @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110464))) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*;
                    }
                }
                glPopMatrix(@as(c_int, 1));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 3))) => {
                glMatrixMode(@as(c_uint, @bitCast(GL_PROJECTION)));
                glPushMatrix();
                glLoadIdentity();
                while ((@as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67110400))).* & @as(@"u32", @bitCast(@as(c_int, 1) << @intCast(@as(c_int, 27))))) != 0) {}
                {
                    i = 0;
                    while (i < @as(c_int, 16)) : (i += 1) {
                        (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk f + @as(usize, @intCast(tmp)) else break :blk f - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110464))) + @as(usize, @intCast(tmp)) else break :blk @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110464))) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*;
                    }
                }
                glPopMatrix(@as(c_int, 1));
                break;
            },
            else => break,
        }
        break;
    }
}
pub fn glAlphaFunc(arg_alphaThreshold: c_int) callconv(.C) void {
    var alphaThreshold = arg_alphaThreshold;
    _ = &alphaThreshold;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67109696))).* = @as(@"u16", @bitCast(@as(c_short, @truncate(alphaThreshold))));
}
pub fn glCutoffDepth(arg_wVal: fixed12d3) callconv(.C) void {
    var wVal = arg_wVal;
    _ = &wVal;
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67110416))).* = wVal;
}
pub fn glInit() callconv(.C) void {
    glInit_C();
}
pub fn glClearColor(arg_red: uint8, arg_green: uint8, arg_blue: uint8, arg_alpha: uint8) callconv(.C) void {
    var red = arg_red;
    _ = &red;
    var green = arg_green;
    _ = &green;
    var blue = arg_blue;
    _ = &blue;
    var alpha = arg_alpha;
    _ = &alpha;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109712))).* = blk: {
        const tmp = ((glGlob.*.clearColor & @as(c_uint, 4292902912)) | @as(c_uint, @bitCast(@as(c_int, 32767) & ((@as(c_int, @bitCast(@as(c_uint, red))) | (@as(c_int, @bitCast(@as(c_uint, green))) << @intCast(5))) | (@as(c_int, @bitCast(@as(c_uint, blue))) << @intCast(10)))))) | @as(c_uint, @bitCast((@as(c_int, @bitCast(@as(c_uint, alpha))) & @as(c_int, 31)) << @intCast(16)));
        glGlob.*.clearColor = tmp;
        break :blk tmp;
    };
}
pub fn glClearPolyID(arg_ID: uint8) callconv(.C) void {
    var ID = arg_ID;
    _ = &ID;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67109712))).* = blk: {
        const tmp = (glGlob.*.clearColor & @as(c_uint, 3238002687)) | @as(c_uint, @bitCast((@as(c_int, @bitCast(@as(c_uint, ID))) & @as(c_int, 63)) << @intCast(24)));
        glGlob.*.clearColor = tmp;
        break :blk tmp;
    };
}
pub fn glGetInt(arg_param: GL_GET_ENUM, arg_i: [*c]c_int) callconv(.C) void {
    var param = arg_param;
    _ = &param;
    var i = arg_i;
    _ = &i;
    while (true) {
        switch (param) {
            @as(c_uint, @bitCast(@as(c_int, 1))) => {
                i.* = @as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67110404))).*)));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 0))) => {
                i.* = @as(c_int, @bitCast(@as(c_uint, @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67110406))).*)));
                break;
            },
            @as(c_uint, @bitCast(@as(c_int, 6))) => {
                {
                    var tex: [*c]gl_texture_data = @as([*c]gl_texture_data, @ptrCast(@alignCast(DynamicArrayGet(&glGlob.*.texturePtrs, @as(c_uint, @bitCast(glGlob.*.activeTexture))))));
                    _ = &tex;
                    if (tex != null) {
                        i.* = @as(c_int, 8) << @intCast((tex.*.texFormat >> @intCast(20)) & @as(uint32, @bitCast(@as(c_int, 7))));
                    }
                    break;
                }
            },
            @as(c_uint, @bitCast(@as(c_int, 7))) => {
                {
                    var tex: [*c]gl_texture_data = @as([*c]gl_texture_data, @ptrCast(@alignCast(DynamicArrayGet(&glGlob.*.texturePtrs, @as(c_uint, @bitCast(glGlob.*.activeTexture))))));
                    _ = &tex;
                    if (tex != null) {
                        i.* = @as(c_int, 8) << @intCast((tex.*.texFormat >> @intCast(23)) & @as(uint32, @bitCast(@as(c_int, 7))));
                    }
                    break;
                }
            },
            else => break,
        }
        break;
    }
}
pub fn glVertex3f(arg_x: f32, arg_y: f32, arg_z: f32) callconv(.C) void {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var z = arg_z;
    _ = &z;
    glVertex3v16(@as(v16, @intFromFloat(x * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(v16, @intFromFloat(y * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(v16, @intFromFloat(z * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))));
}
pub fn glRotatef32(arg_angle: f32, arg_x: c_int, arg_y: c_int, arg_z: c_int) callconv(.C) void {
    var angle = arg_angle;
    _ = &angle;
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var z = arg_z;
    _ = &z;
    glRotatef32i(@as(c_int, @intFromFloat(@as(f64, @floatCast(angle * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(15))))) / 360.0)), x, y, z);
}
pub fn glRotatef(arg_angle: f32, arg_x: f32, arg_y: f32, arg_z: f32) callconv(.C) void {
    var angle = arg_angle;
    _ = &angle;
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var z = arg_z;
    _ = &z;
    glRotatef32(angle, @as(c_int, @intFromFloat(x * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(y * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(z * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))));
}
pub fn glColor3f(arg_r: f32, arg_g: f32, arg_b: f32) callconv(.C) void {
    var r = arg_r;
    _ = &r;
    var g = arg_g;
    _ = &g;
    var b = arg_b;
    _ = &b;
    glColor3b(@as(uint8, @intFromFloat(r * @as(f32, @floatFromInt(@as(c_int, 255))))), @as(uint8, @intFromFloat(g * @as(f32, @floatFromInt(@as(c_int, 255))))), @as(uint8, @intFromFloat(b * @as(f32, @floatFromInt(@as(c_int, 255))))));
}
pub fn glScalef(arg_x: f32, arg_y: f32, arg_z: f32) callconv(.C) void {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var z = arg_z;
    _ = &z;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109996))).* = @as(c_int, @intFromFloat(x * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12)))));
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109996))).* = @as(c_int, @intFromFloat(y * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12)))));
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67109996))).* = @as(c_int, @intFromFloat(z * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12)))));
}
pub fn glTranslatef(arg_x: f32, arg_y: f32, arg_z: f32) callconv(.C) void {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var z = arg_z;
    _ = &z;
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110000))).* = @as(c_int, @intFromFloat(x * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12)))));
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110000))).* = @as(c_int, @intFromFloat(y * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12)))));
    @as([*c]volatile vs32, @ptrFromInt(@as(c_int, 67110000))).* = @as(c_int, @intFromFloat(z * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12)))));
}
pub fn glNormal3f(arg_x: f32, arg_y: f32, arg_z: f32) callconv(.C) void {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var z = arg_z;
    _ = &z;
    glNormal(@as(@"u32", @bitCast((((if (@as(f64, @floatCast(x)) > 0.998) @as(c_int, 511) else @as(c_int, @bitCast(@as(c_int, @as(v10, @intFromFloat(x * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(9))))))))) & @as(c_int, 1023)) | (((if (@as(f64, @floatCast(y)) > 0.998) @as(c_int, 511) else @as(c_int, @bitCast(@as(c_int, @as(v10, @intFromFloat(y * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(9))))))))) & @as(c_int, 1023)) << @intCast(10))) | ((if (@as(f64, @floatCast(z)) > 0.998) @as(c_int, 511) else @as(c_int, @bitCast(@as(c_int, @as(v10, @intFromFloat(z * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(9))))))))) << @intCast(20)))));
}
pub fn glRotateX(arg_angle: f32) callconv(.C) void {
    var angle = arg_angle;
    _ = &angle;
    glRotateXi(@as(c_int, @intFromFloat(@as(f64, @floatCast(angle * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(15))))) / 360.0)));
}
pub fn glRotateY(arg_angle: f32) callconv(.C) void {
    var angle = arg_angle;
    _ = &angle;
    glRotateYi(@as(c_int, @intFromFloat(@as(f64, @floatCast(angle * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(15))))) / 360.0)));
}
pub fn glRotateZ(arg_angle: f32) callconv(.C) void {
    var angle = arg_angle;
    _ = &angle;
    glRotateZi(@as(c_int, @intFromFloat(@as(f64, @floatCast(angle * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(15))))) / 360.0)));
}
pub fn glOrtho(arg_left: f32, arg_right: f32, arg_bottom: f32, arg_top: f32, arg_zNear: f32, arg_zFar: f32) callconv(.C) void {
    var left = arg_left;
    _ = &left;
    var right = arg_right;
    _ = &right;
    var bottom = arg_bottom;
    _ = &bottom;
    var top = arg_top;
    _ = &top;
    var zNear = arg_zNear;
    _ = &zNear;
    var zFar = arg_zFar;
    _ = &zFar;
    glOrthof32(@as(c_int, @intFromFloat(left * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(right * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(bottom * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(top * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(zNear * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(zFar * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))));
}
pub fn gluLookAt(arg_eyex: f32, arg_eyey: f32, arg_eyez: f32, arg_lookAtx: f32, arg_lookAty: f32, arg_lookAtz: f32, arg_upx: f32, arg_upy: f32, arg_upz: f32) callconv(.C) void {
    var eyex = arg_eyex;
    _ = &eyex;
    var eyey = arg_eyey;
    _ = &eyey;
    var eyez = arg_eyez;
    _ = &eyez;
    var lookAtx = arg_lookAtx;
    _ = &lookAtx;
    var lookAty = arg_lookAty;
    _ = &lookAty;
    var lookAtz = arg_lookAtz;
    _ = &lookAtz;
    var upx = arg_upx;
    _ = &upx;
    var upy = arg_upy;
    _ = &upy;
    var upz = arg_upz;
    _ = &upz;
    gluLookAtf32(@as(c_int, @intFromFloat(eyex * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(eyey * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(eyez * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(lookAtx * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(lookAty * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(lookAtz * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(upx * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(upy * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(upz * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))));
}
pub fn glFrustum(arg_left: f32, arg_right: f32, arg_bottom: f32, arg_top: f32, arg_near: f32, arg_far: f32) callconv(.C) void {
    var left = arg_left;
    _ = &left;
    var right = arg_right;
    _ = &right;
    var bottom = arg_bottom;
    _ = &bottom;
    var top = arg_top;
    _ = &top;
    var near = arg_near;
    _ = &near;
    var far = arg_far;
    _ = &far;
    glFrustumf32(@as(c_int, @intFromFloat(left * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(right * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(bottom * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(top * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(near * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(far * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))));
}
pub fn gluPerspective(arg_fovy: f32, arg_aspect: f32, arg_zNear: f32, arg_zFar: f32) callconv(.C) void {
    var fovy = arg_fovy;
    _ = &fovy;
    var aspect = arg_aspect;
    _ = &aspect;
    var zNear = arg_zNear;
    _ = &zNear;
    var zFar = arg_zFar;
    _ = &zFar;
    gluPerspectivef32(@as(c_int, @intFromFloat(@as(f64, @floatCast(fovy * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(15))))) / 360.0)), @as(c_int, @intFromFloat(aspect * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(zNear * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))), @as(c_int, @intFromFloat(zFar * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(12))))));
}
pub fn glTexCoord2f(arg_s: f32, arg_t: f32) callconv(.C) void {
    var s = arg_s;
    _ = &s;
    var t = arg_t;
    _ = &t;
    var tex: [*c]gl_texture_data = @as([*c]gl_texture_data, @ptrCast(@alignCast(DynamicArrayGet(&glGlob.*.texturePtrs, @as(c_uint, @bitCast(glGlob.*.activeTexture))))));
    _ = &tex;
    if (tex != null) {
        var x: c_int = @as(c_int, @bitCast((tex.*.texFormat >> @intCast(20)) & @as(uint32, @bitCast(@as(c_int, 7)))));
        _ = &x;
        var y: c_int = @as(c_int, @bitCast((tex.*.texFormat >> @intCast(23)) & @as(uint32, @bitCast(@as(c_int, 7)))));
        _ = &y;
        glTexCoord2t16(@as(t16, @intFromFloat((s * @as(f32, @floatFromInt(@as(c_int, 8) << @intCast(x)))) * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(4))))), @as(t16, @intFromFloat((t * @as(f32, @floatFromInt(@as(c_int, 8) << @intCast(y)))) * @as(f32, @floatFromInt(@as(c_int, 1) << @intCast(4))))));
    }
}
pub extern fn BoxTest(x: v16, y: v16, z: v16, width: v16, height: v16, depth: v16) c_int;
pub extern fn BoxTestf(x: f32, y: f32, z: f32, width: f32, height: f32, depth: f32) c_int;
pub extern fn BoxTest_Asynch(x: v16, y: v16, z: v16, height: v16, width: v16, depth: v16) void;
pub extern fn BoxTestf_Asynch(x: f32, y: f32, z: f32, width: f32, height: f32, depth: f32) void;
pub extern fn BoxTestResult() c_int;
pub const ConsolePrint = ?*const fn (?*anyopaque, u8) callconv(.C) bool;
pub const struct_ConsoleFont = extern struct {
    gfx: [*c]@"u16" = @import("std").mem.zeroes([*c]@"u16"),
    pal: [*c]@"u16" = @import("std").mem.zeroes([*c]@"u16"),
    numColors: @"u16" = @import("std").mem.zeroes(@"u16"),
    bpp: @"u8" = @import("std").mem.zeroes(@"u8"),
    asciiOffset: @"u16" = @import("std").mem.zeroes(@"u16"),
    numChars: @"u16" = @import("std").mem.zeroes(@"u16"),
    convertSingleColor: bool = @import("std").mem.zeroes(bool),
};
pub const ConsoleFont = struct_ConsoleFont;
pub const struct_PrintConsole = extern struct {
    font: ConsoleFont = @import("std").mem.zeroes(ConsoleFont),
    fontBgMap: [*c]@"u16" = @import("std").mem.zeroes([*c]@"u16"),
    fontBgGfx: [*c]@"u16" = @import("std").mem.zeroes([*c]@"u16"),
    mapBase: @"u8" = @import("std").mem.zeroes(@"u8"),
    gfxBase: @"u8" = @import("std").mem.zeroes(@"u8"),
    bgLayer: @"u8" = @import("std").mem.zeroes(@"u8"),
    bgId: c_int = @import("std").mem.zeroes(c_int),
    cursorX: c_int = @import("std").mem.zeroes(c_int),
    cursorY: c_int = @import("std").mem.zeroes(c_int),
    prevCursorX: c_int = @import("std").mem.zeroes(c_int),
    prevCursorY: c_int = @import("std").mem.zeroes(c_int),
    consoleWidth: c_int = @import("std").mem.zeroes(c_int),
    consoleHeight: c_int = @import("std").mem.zeroes(c_int),
    windowX: c_int = @import("std").mem.zeroes(c_int),
    windowY: c_int = @import("std").mem.zeroes(c_int),
    windowWidth: c_int = @import("std").mem.zeroes(c_int),
    windowHeight: c_int = @import("std").mem.zeroes(c_int),
    tabSize: c_int = @import("std").mem.zeroes(c_int),
    fontCharOffset: @"u16" = @import("std").mem.zeroes(@"u16"),
    fontCurPal: @"u16" = @import("std").mem.zeroes(@"u16"),
    PrintChar: ConsolePrint = @import("std").mem.zeroes(ConsolePrint),
    consoleInitialised: bool = @import("std").mem.zeroes(bool),
    loadGraphics: bool = @import("std").mem.zeroes(bool),
};
pub const PrintConsole = struct_PrintConsole;
pub const DebugDevice_NULL: c_int = 0;
pub const DebugDevice_NOCASH: c_int = 1;
pub const DebugDevice_CONSOLE: c_int = 2;
pub const DebugDevice = c_uint;
pub extern fn consoleSetFont(console: [*c]PrintConsole, font: [*c]ConsoleFont) void;
pub extern fn consoleSetWindow(console: [*c]PrintConsole, x: c_int, y: c_int, width: c_int, height: c_int) void;
pub extern fn consoleGetDefault() [*c]PrintConsole;
pub extern fn consoleSelect(console: [*c]PrintConsole) [*c]PrintConsole;
pub extern fn consoleInit(console: [*c]PrintConsole, layer: c_int, @"type": BgType, size: BgSize, mapBase: c_int, tileBase: c_int, mainDisplay: bool, loadGraphics: bool) [*c]PrintConsole;
pub extern fn consoleDemoInit() [*c]PrintConsole;
pub extern fn consoleClear() void;
pub extern fn consoleDebugInit(device: DebugDevice) void;
pub const LZ77: c_int = 0;
pub const LZ77Vram: c_int = 1;
pub const HUFF: c_int = 2;
pub const RLE: c_int = 3;
pub const RLEVram: c_int = 4;
pub const DecompressType = c_uint;
pub extern fn decompress(data: ?*const anyopaque, dst: ?*anyopaque, @"type": DecompressType) void;
pub extern fn decompressStream(data: ?*const anyopaque, dst: ?*anyopaque, @"type": DecompressType, readCB: getByteCallback, getHeaderCB: getHeaderCallback) void;
pub const exceptionC: [*c]VoidFn = @extern([*c]VoidFn, .{
    .name = "exceptionC",
});
pub extern var exceptionStack: @"u32";
pub const exceptionRegisters: [*c]s32 = @extern([*c]s32, .{
    .name = "exceptionRegisters",
});
pub extern fn enterException() void;
pub extern fn setExceptionHandler(handler: VoidFn) void;
pub extern fn defaultExceptionHandler(...) void;
pub extern fn getCPSR(...) @"u32";
pub extern fn guitarGripIsInserted(...) bool;
pub extern fn guitarGripScanKeys(...) void;
pub extern fn guitarGripKeysHeld(...) @"u8";
pub extern fn guitarGripKeysDown(...) @"u16";
pub extern fn guitarGripKeysUp(...) @"u16";
pub const struct_RGB_24 = extern struct {
    r: u8 align(1) = @import("std").mem.zeroes(u8),
    g: u8 align(1) = @import("std").mem.zeroes(u8),
    b: u8 align(1) = @import("std").mem.zeroes(u8),
};
pub const RGB_24 = struct_RGB_24;
const union_unnamed_6 = extern union {
    data8: [*c]@"u8",
    data16: [*c]@"u16",
    data32: [*c]@"u32",
};
pub const struct_sImage = extern struct {
    height: c_short = @import("std").mem.zeroes(c_short),
    width: c_short = @import("std").mem.zeroes(c_short),
    bpp: c_int = @import("std").mem.zeroes(c_int),
    palette: [*c]c_ushort = @import("std").mem.zeroes([*c]c_ushort),
    image: union_unnamed_6 = @import("std").mem.zeroes(union_unnamed_6),
};
pub const sImage = struct_sImage;
pub const psImage = [*c]struct_sImage;
pub extern fn image24to16(img: [*c]sImage) void;
pub extern fn image8to16(img: [*c]sImage) void;
pub extern fn image8to16trans(img: [*c]sImage, transparentColor: @"u8") void;
pub extern fn imageDestroy(img: [*c]sImage) void;
pub extern fn imageTileData(img: [*c]sImage) void;
pub const struct_PCXHeader = extern struct {
    manufacturer: u8 align(1) = @import("std").mem.zeroes(u8),
    version: u8 align(1) = @import("std").mem.zeroes(u8),
    encoding: u8 align(1) = @import("std").mem.zeroes(u8),
    bitsPerPixel: u8 align(1) = @import("std").mem.zeroes(u8),
    xmin: c_short align(1) = @import("std").mem.zeroes(c_short),
    ymin: c_short align(1) = @import("std").mem.zeroes(c_short),
    xmax: c_short align(1) = @import("std").mem.zeroes(c_short),
    ymax: c_short align(1) = @import("std").mem.zeroes(c_short),
    hres: c_short align(1) = @import("std").mem.zeroes(c_short),
    vres: c_short align(1) = @import("std").mem.zeroes(c_short),
    palette16: [48]u8 align(1) = @import("std").mem.zeroes([48]u8),
    reserved: u8 align(1) = @import("std").mem.zeroes(u8),
    colorPlanes: u8 align(1) = @import("std").mem.zeroes(u8),
    bytesPerLine: c_short align(1) = @import("std").mem.zeroes(c_short),
    paletteYype: c_short align(1) = @import("std").mem.zeroes(c_short),
    filler: [58]u8 align(1) = @import("std").mem.zeroes([58]u8),
};
pub const PCXHeader = struct_PCXHeader;
pub const pPCXHeader = [*c]struct_PCXHeader;
pub extern fn loadPCX(pcx: [*c]const u8, image: [*c]sImage) c_int;
pub extern fn scanKeys() void;
pub extern fn keysCurrent() uint32;
pub extern fn keysHeld() uint32;
pub extern fn keysDown() uint32;
pub extern fn keysDownRepeat() uint32;
pub extern fn keysSetRepeat(setDelay: @"u8", setRepeat: @"u8") void;
pub extern fn keysUp() uint32;
pub extern fn touchReadXY(...) touchPosition;
pub extern fn touchRead(data: [*c]touchPosition) void;
pub const KeyChangeCallback = ?*const fn (c_int) callconv(.C) void;
pub const Lower: c_int = 0;
pub const Upper: c_int = 1;
pub const Numeric: c_int = 2;
pub const Reduced: c_int = 3;
pub const KeyboardState = c_uint;
pub const struct_KeyMap = extern struct {
    mapDataPressed: [*c]const @"u16" = @import("std").mem.zeroes([*c]const @"u16"),
    mapDataReleased: [*c]const @"u16" = @import("std").mem.zeroes([*c]const @"u16"),
    keymap: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
};
pub const KeyMap = struct_KeyMap;
pub const struct_Keyboard = extern struct {
    background: c_int = @import("std").mem.zeroes(c_int),
    keyboardOnSub: c_int = @import("std").mem.zeroes(c_int),
    offset_x: c_int = @import("std").mem.zeroes(c_int),
    offset_y: c_int = @import("std").mem.zeroes(c_int),
    grid_width: c_int = @import("std").mem.zeroes(c_int),
    grid_height: c_int = @import("std").mem.zeroes(c_int),
    state: KeyboardState = @import("std").mem.zeroes(KeyboardState),
    shifted: c_int = @import("std").mem.zeroes(c_int),
    visible: c_int = @import("std").mem.zeroes(c_int),
    mappings: [4][*c]KeyMap = @import("std").mem.zeroes([4][*c]KeyMap),
    tiles: [*c]const @"u16" = @import("std").mem.zeroes([*c]const @"u16"),
    tileLen: @"u32" = @import("std").mem.zeroes(@"u32"),
    palette: [*c]const @"u16" = @import("std").mem.zeroes([*c]const @"u16"),
    paletteLen: @"u32" = @import("std").mem.zeroes(@"u32"),
    mapBase: c_int = @import("std").mem.zeroes(c_int),
    tileBase: c_int = @import("std").mem.zeroes(c_int),
    tileOffset: c_int = @import("std").mem.zeroes(c_int),
    scrollSpeed: @"u32" = @import("std").mem.zeroes(@"u32"),
    OnKeyPressed: KeyChangeCallback = @import("std").mem.zeroes(KeyChangeCallback),
    OnKeyReleased: KeyChangeCallback = @import("std").mem.zeroes(KeyChangeCallback),
};
pub const Keyboard = struct_Keyboard;
pub const NOKEY: c_int = -1;
pub const DVK_FOLD: c_int = -23;
pub const DVK_TAB: c_int = 9;
pub const DVK_BACKSPACE: c_int = 8;
pub const DVK_CAPS: c_int = -15;
pub const DVK_SHIFT: c_int = -14;
pub const DVK_SPACE: c_int = 32;
pub const DVK_MENU: c_int = -5;
pub const DVK_ENTER: c_int = 10;
pub const DVK_CTRL: c_int = -16;
pub const DVK_UP: c_int = -17;
pub const DVK_RIGHT: c_int = -18;
pub const DVK_DOWN: c_int = -19;
pub const DVK_LEFT: c_int = -20;
pub const DVK_ALT: c_int = -26;
pub const Keys = c_int;
pub extern fn keyboardGetDefault() [*c]Keyboard;
pub extern fn keyboardInit(keyboard: [*c]Keyboard, layer: c_int, @"type": BgType, size: BgSize, mapBase: c_int, tileBase: c_int, mainDisplay: bool, loadGraphics: bool) [*c]Keyboard;
pub extern fn keyboardDemoInit() [*c]Keyboard;
pub extern fn keyboardShow() void;
pub extern fn keyboardHide() void;
pub extern fn keyboardGetKey(x: c_int, y: c_int) c_int;
pub extern fn keyboardGetString(buffer: [*c]u8, maxLen: c_int) void;
pub extern fn keyboardGetChar() c_int;
pub extern fn keyboardUpdate() c_int;
pub extern fn paddleIsInserted(...) bool;
pub extern fn paddleRead(...) @"u16";
pub extern fn paddleReset(...) void;
pub extern fn pianoIsInserted(...) bool;
pub extern fn pianoScanKeys(...) void;
pub extern fn pianoKeysHeld(...) @"u16";
pub extern fn pianoKeysDown(...) @"u16";
pub extern fn pianoKeysUp(...) @"u16";
pub const RUMBLE: c_int = 0;
pub const WARIOWARE: c_int = 1;
pub const RUMBLE_TYPE = c_uint;
pub extern fn isRumbleInserted() bool;
pub extern fn setRumble(position: bool) void;
pub const MicCallback = ?*const fn (?*anyopaque, c_int) callconv(.C) void;
pub const SoundFormat_16Bit: c_int = 1;
pub const SoundFormat_8Bit: c_int = 0;
pub const SoundFormat_PSG: c_int = 3;
pub const SoundFormat_ADPCM: c_int = 2;
pub const SoundFormat = c_uint;
pub const MicFormat_8Bit: c_int = 1;
pub const MicFormat_12Bit: c_int = 0;
pub const MicFormat = c_uint;
pub const DutyCycle_0: c_int = 7;
pub const DutyCycle_12: c_int = 0;
pub const DutyCycle_25: c_int = 1;
pub const DutyCycle_37: c_int = 2;
pub const DutyCycle_50: c_int = 3;
pub const DutyCycle_62: c_int = 4;
pub const DutyCycle_75: c_int = 5;
pub const DutyCycle_87: c_int = 6;
pub const DutyCycle = c_uint;
pub extern fn soundEnable() void;
pub extern fn soundDisable() void;
pub extern fn soundPlaySample(data: ?*const anyopaque, format: SoundFormat, dataSize: @"u32", freq: @"u16", volume: @"u8", pan: @"u8", loop: bool, loopPoint: @"u16") c_int;
pub extern fn soundPlayPSG(cycle: DutyCycle, freq: @"u16", volume: @"u8", pan: @"u8") c_int;
pub extern fn soundPlayNoise(freq: @"u16", volume: @"u8", pan: @"u8") c_int;
pub extern fn soundPause(soundId: c_int) void;
pub extern fn soundSetWaveDuty(soundId: c_int, cycle: DutyCycle) void;
pub extern fn soundKill(soundId: c_int) void;
pub extern fn soundResume(soundId: c_int) void;
pub extern fn soundSetVolume(soundId: c_int, volume: @"u8") void;
pub extern fn soundSetPan(soundId: c_int, pan: @"u8") void;
pub extern fn soundSetFreq(soundId: c_int, freq: @"u16") void;
pub extern fn soundMicRecord(buffer: ?*anyopaque, bufferLength: @"u32", format: MicFormat, freq: c_int, callback: MicCallback) c_int;
pub extern fn soundMicOff() void;
pub const OBJMODE_NORMAL: c_int = 0;
pub const OBJMODE_BLENDED: c_int = 1;
pub const OBJMODE_WINDOWED: c_int = 2;
pub const OBJMODE_BITMAP: c_int = 3;
pub const ObjBlendMode = c_uint;
pub const OBJSHAPE_SQUARE: c_int = 0;
pub const OBJSHAPE_WIDE: c_int = 1;
pub const OBJSHAPE_TALL: c_int = 2;
pub const OBJSHAPE_FORBIDDEN: c_int = 3;
pub const ObjShape = c_uint;
pub const OBJSIZE_8: c_int = 0;
pub const OBJSIZE_16: c_int = 1;
pub const OBJSIZE_32: c_int = 2;
pub const OBJSIZE_64: c_int = 3;
pub const ObjSize = c_uint;
pub const OBJCOLOR_16: c_int = 0;
pub const OBJCOLOR_256: c_int = 1;
pub const ObjColMode = c_uint;
pub const OBJPRIORITY_0: c_int = 0;
pub const OBJPRIORITY_1: c_int = 1;
pub const OBJPRIORITY_2: c_int = 2;
pub const OBJPRIORITY_3: c_int = 3;
pub const ObjPriority = c_uint; // /opt/devkitpro/libnds/include/nds/arm9/sprite.h:132:8: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_8 = opaque {}; // /opt/devkitpro/libnds/include/nds/arm9/sprite.h:155:9: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_10 = opaque {}; // /opt/devkitpro/libnds/include/nds/arm9/sprite.h:159:5: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_11 = opaque {};
const union_unnamed_9 = extern union {
    unnamed_0: struct_unnamed_10,
    unnamed_1: struct_unnamed_11,
}; // /opt/devkitpro/libnds/include/nds/arm9/sprite.h:178:8: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_12 = opaque {};
const struct_unnamed_7 = extern struct {
    unnamed_0: struct_unnamed_8 = @import("std").mem.zeroes(struct_unnamed_8),
    unnamed_1: union_unnamed_9 = @import("std").mem.zeroes(union_unnamed_9),
    unnamed_2: struct_unnamed_12 = @import("std").mem.zeroes(struct_unnamed_12),
    attribute3: @"u16" = @import("std").mem.zeroes(@"u16"),
};
const struct_unnamed_13 = extern struct {
    attribute: [3]uint16 = @import("std").mem.zeroes([3]uint16),
    filler: uint16 = @import("std").mem.zeroes(uint16),
};
pub const union_SpriteEntry = extern union {
    unnamed_0: struct_unnamed_7,
    unnamed_1: struct_unnamed_13,
};
pub const SpriteEntry = union_SpriteEntry;
pub const pSpriteEntry = ?*union_SpriteEntry;
pub const struct_SpriteRotation = extern struct {
    filler1: [3]uint16 = @import("std").mem.zeroes([3]uint16),
    hdx: int16 = @import("std").mem.zeroes(int16),
    filler2: [3]uint16 = @import("std").mem.zeroes([3]uint16),
    vdx: int16 = @import("std").mem.zeroes(int16),
    filler3: [3]uint16 = @import("std").mem.zeroes([3]uint16),
    hdy: int16 = @import("std").mem.zeroes(int16),
    filler4: [3]uint16 = @import("std").mem.zeroes([3]uint16),
    vdy: int16 = @import("std").mem.zeroes(int16),
};
pub const SpriteRotation = struct_SpriteRotation;
pub const pSpriteRotation = [*c]struct_SpriteRotation;
pub const union_OAMTable = extern union {
    oamBuffer: [128]SpriteEntry,
    matrixBuffer: [32]SpriteRotation,
};
pub const OAMTable = union_OAMTable;
pub const SpriteSize_8x8: c_int = 2;
pub const SpriteSize_16x16: c_int = 16392;
pub const SpriteSize_32x32: c_int = 32800;
pub const SpriteSize_64x64: c_int = 49280;
pub const SpriteSize_16x8: c_int = 4100;
pub const SpriteSize_32x8: c_int = 20488;
pub const SpriteSize_32x16: c_int = 36880;
pub const SpriteSize_64x32: c_int = 53312;
pub const SpriteSize_8x16: c_int = 8196;
pub const SpriteSize_8x32: c_int = 24584;
pub const SpriteSize_16x32: c_int = 40976;
pub const SpriteSize_32x64: c_int = 57408;
pub const SpriteSize = c_uint;
pub const SpriteMapping_1D_32: c_int = 16;
pub const SpriteMapping_1D_64: c_int = 269484049;
pub const SpriteMapping_1D_128: c_int = 538968082;
pub const SpriteMapping_1D_256: c_int = 808452115;
pub const SpriteMapping_2D: c_int = 1073741824;
pub const SpriteMapping_Bmp_1D_128: c_int = 1344274514;
pub const SpriteMapping_Bmp_1D_256: c_int = 1617952851;
pub const SpriteMapping_Bmp_2D_128: c_int = 1879048194;
pub const SpriteMapping_Bmp_2D_256: c_int = -2147483613;
pub const SpriteMapping = c_int;
pub const SpriteColorFormat_16Color: c_int = 0;
pub const SpriteColorFormat_256Color: c_int = 1;
pub const SpriteColorFormat_Bmp: c_int = 3;
pub const SpriteColorFormat = c_uint;
pub const struct_AllocHeader = extern struct {
    nextFree: @"u16" = @import("std").mem.zeroes(@"u16"),
    size: @"u16" = @import("std").mem.zeroes(@"u16"),
};
pub const AllocHeader = struct_AllocHeader;
const union_unnamed_14 = extern union {
    oamMemory: ?*SpriteEntry,
    oamRotationMemory: [*c]SpriteRotation,
};
pub const struct_OamState = extern struct {
    gfxOffsetStep: c_int = @import("std").mem.zeroes(c_int),
    firstFree: s16 = @import("std").mem.zeroes(s16),
    allocBuffer: [*c]AllocHeader = @import("std").mem.zeroes([*c]AllocHeader),
    allocBufferSize: s16 = @import("std").mem.zeroes(s16),
    unnamed_0: union_unnamed_14 = @import("std").mem.zeroes(union_unnamed_14),
    spriteMapping: SpriteMapping = @import("std").mem.zeroes(SpriteMapping),
};
pub const OamState = struct_OamState;
pub extern var oamMain: OamState;
pub extern var oamSub: OamState;
pub extern fn oamGfxPtrToOffset(oam: [*c]OamState, offset: ?*const anyopaque) c_uint;
pub extern fn oamInit(oam: [*c]OamState, mapping: SpriteMapping, extPalette: bool) void;
pub extern fn oamDisable(oam: [*c]OamState) void;
pub extern fn oamEnable(oam: [*c]OamState) void;
pub extern fn oamGetGfxPtr(oam: [*c]OamState, gfxOffsetIndex: c_int) [*c]@"u16";
pub extern fn oamAllocateGfx(oam: [*c]OamState, size: SpriteSize, colorFormat: SpriteColorFormat) [*c]@"u16";
pub extern fn oamFreeGfx(oam: [*c]OamState, gfxOffset: ?*const anyopaque) void;
pub fn oamSetMosaic(arg_dx: c_uint, arg_dy: c_uint) callconv(.C) void {
    var dx = arg_dx;
    _ = &dx;
    var dy = arg_dy;
    _ = &dy;
    _ = if ((dx < @as(c_uint, @bitCast(@as(c_int, 16)))) and (dy < @as(c_uint, @bitCast(@as(c_int, 16))))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 365), "dx < 16 && dy < 16", "Mosaic range must be 0 to 15");
    mosaicShadow = @as(@"u16", @bitCast(@as(c_ushort, @truncate((@as(c_uint, @bitCast(@as(c_int, @bitCast(@as(c_uint, mosaicShadow))) & @as(c_int, 255))) | (dx << @intCast(8))) | (dy << @intCast(12))))));
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67108940))).* = mosaicShadow;
}
pub fn oamSetMosaicSub(arg_dx: c_uint, arg_dy: c_uint) callconv(.C) void {
    var dx = arg_dx;
    _ = &dx;
    var dy = arg_dy;
    _ = &dy;
    _ = if ((dx < @as(c_uint, @bitCast(@as(c_int, 16)))) and (dy < @as(c_uint, @bitCast(@as(c_int, 16))))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 378), "dx < 16 && dy < 16", "Mosaic range must be 0 to 15");
    mosaicShadowSub = @as(@"u16", @bitCast(@as(c_ushort, @truncate((@as(c_uint, @bitCast(@as(c_int, @bitCast(@as(c_uint, mosaicShadowSub))) & @as(c_int, 255))) | (dx << @intCast(8))) | (dy << @intCast(12))))));
    @as([*c]volatile vu16, @ptrFromInt(@as(c_int, 67113036))).* = mosaicShadowSub;
}
pub extern fn oamSet(oam: [*c]OamState, id: c_int, x: c_int, y: c_int, priority: c_int, palette_alpha: c_int, size: SpriteSize, format: SpriteColorFormat, gfxOffset: ?*const anyopaque, affineIndex: c_int, sizeDouble: bool, hide: bool, hflip: bool, vflip: bool, mosaic: bool) void;
pub fn oamSetXY(arg_oam: [*c]OamState, arg_id: c_int, arg_x: c_int, arg_y: c_int) callconv(.C) void {
    var oam = arg_oam;
    _ = &oam;
    var id = arg_id;
    _ = &id;
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    _ = if ((oam == (&oamMain)) or (oam == (&oamSub))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 414), "oam == &oamMain || oam == &oamSub", "oamSetXY() oam must be &oamMain or &oamSub");
    _ = if ((id >= @as(c_int, 0)) and (id < @as(c_int, 128))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 415), "id >= 0 && id < SPRITE_COUNT", "oamSetXY() index is out of bounds, must be 0-127");
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_1.unnamed_0.x = @as(@"u16", @bitCast(@as(c_short, @truncate(x))));
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_0.y = @as(@"u16", @bitCast(@as(c_short, @truncate(y))));
}
pub fn oamSetPriority(arg_oam: [*c]OamState, arg_id: c_int, arg_priority: c_int) callconv(.C) void {
    var oam = arg_oam;
    _ = &oam;
    var id = arg_id;
    _ = &id;
    var priority = arg_priority;
    _ = &priority;
    _ = if ((oam == (&oamMain)) or (oam == (&oamSub))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 429), "oam == &oamMain || oam == &oamSub", "oamSetPriority() oam must be &oamMain or &oamSub");
    _ = if ((id >= @as(c_int, 0)) and (id < @as(c_int, 128))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 430), "id >= 0 && id < SPRITE_COUNT", "oamSetPriority() index is out of bounds, must be 0-127");
    _ = if ((priority >= @as(c_int, 0)) and (priority < @as(c_int, 4))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 431), "priority >= 0 && priority < 4", "oamSetPriority() priority is out of bounds, must be 0-3");
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_2.priority = @as(c_uint, @bitCast(priority));
}
pub fn oamSetPalette(arg_oam: [*c]OamState, arg_id: c_int, arg_palette: c_int) callconv(.C) void {
    var oam = arg_oam;
    _ = &oam;
    var id = arg_id;
    _ = &id;
    var palette = arg_palette;
    _ = &palette;
    _ = if ((oam == (&oamMain)) or (oam == (&oamSub))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 444), "oam == &oamMain || oam == &oamSub", "oamSetPalette() oam must be &oamMain or &oamSub");
    _ = if ((id >= @as(c_int, 0)) and (id < @as(c_int, 128))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 445), "id >= 0 && id < SPRITE_COUNT", "oamSetPalette() index is out of bounds, must be 0-127");
    _ = if ((palette >= @as(c_int, 0)) and (palette < @as(c_int, 16))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 446), "palette >= 0 && palette < 16", "oamSetPalette() palette is out of bounds, must be 0-15");
    _ = if ((blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_0.blendMode != @as(c_uint, @bitCast(SpriteColorFormat_Bmp))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 448), "oam->oamMemory[id].blendMode != (ObjBlendMode)SpriteColorFormat_Bmp", "oamSetPalette() cannot set palette on a bitmapped sprite");
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_2.palette = @as(@"u8", @bitCast(@as(i8, @truncate(palette))));
}
pub fn oamSetAlpha(arg_oam: [*c]OamState, arg_id: c_int, arg_alpha: c_int) callconv(.C) void {
    var oam = arg_oam;
    _ = &oam;
    var id = arg_id;
    _ = &id;
    var alpha = arg_alpha;
    _ = &alpha;
    _ = if ((oam == (&oamMain)) or (oam == (&oamSub))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 461), "oam == &oamMain || oam == &oamSub", "oamSetAlpha() oam must be &oamMain or &oamSub");
    _ = if ((id >= @as(c_int, 0)) and (id < @as(c_int, 128))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 462), "id >= 0 && id < SPRITE_COUNT", "oamSetAlpha() index is out of bounds, must be 0-127");
    _ = if ((alpha >= @as(c_int, 0)) and (alpha < @as(c_int, 16))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 463), "alpha >= 0 && alpha < 16", "oamSetAlpha() alpha is out of bounds, must be 0-15");
    _ = if ((blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_0.blendMode == @as(c_uint, @bitCast(SpriteColorFormat_Bmp))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 465), "oam->oamMemory[id].blendMode == (ObjBlendMode)SpriteColorFormat_Bmp", "oamSetAlpha() cannot set alpha on a paletted sprite");
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_2.palette = @as(@"u8", @bitCast(@as(i8, @truncate(alpha))));
}
pub fn oamSetGfx(arg_oam: [*c]OamState, arg_id: c_int, arg_size: SpriteSize, arg_format: SpriteColorFormat, arg_gfxOffset: ?*const anyopaque) callconv(.C) void {
    var oam = arg_oam;
    _ = &oam;
    var id = arg_id;
    _ = &id;
    var size = arg_size;
    _ = &size;
    var format = arg_format;
    _ = &format;
    var gfxOffset = arg_gfxOffset;
    _ = &gfxOffset;
    _ = if ((oam == (&oamMain)) or (oam == (&oamSub))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 480), "oam == &oamMain || oam == &oamSub", "oamSetGfx() oam must be &oamMain or &oamSub");
    _ = if ((id >= @as(c_int, 0)) and (id < @as(c_int, 128))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 481), "id >= 0 && id < SPRITE_COUNT", "oamSetGfx() index is out of bounds, must be 0-127");
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_0.shape = (size >> @intCast(12)) & @as(c_uint, @bitCast(@as(c_int, 3)));
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_1.unnamed_1.size = (size >> @intCast(14)) & @as(c_uint, @bitCast(@as(c_int, 3)));
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_2.gfxIndex = @as(@"u16", @bitCast(@as(c_ushort, @truncate(oamGfxPtrToOffset(oam, gfxOffset)))));
    if (format != @as(c_uint, @bitCast(SpriteColorFormat_Bmp))) {
        (blk: {
            const tmp = id;
            if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*.unnamed_0.unnamed_0.colorMode = format;
    } else {
        (blk: {
            const tmp = id;
            if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*.unnamed_0.unnamed_0.blendMode = format;
        (blk: {
            const tmp = id;
            if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*.unnamed_0.unnamed_0.colorMode = @as(c_uint, @bitCast(@as(c_int, 0)));
    }
}
pub fn oamSetAffineIndex(arg_oam: [*c]OamState, arg_id: c_int, arg_affineIndex: c_int, arg_sizeDouble: bool) callconv(.C) void {
    var oam = arg_oam;
    _ = &oam;
    var id = arg_id;
    _ = &id;
    var affineIndex = arg_affineIndex;
    _ = &affineIndex;
    var sizeDouble = arg_sizeDouble;
    _ = &sizeDouble;
    _ = if ((oam == (&oamMain)) or (oam == (&oamSub))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 505), "oam == &oamMain || oam == &oamSub", "oamSetAffineIndex() oam must be &oamMain or &oamSub");
    _ = if ((id >= @as(c_int, 0)) and (id < @as(c_int, 128))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 506), "id >= 0 && id < SPRITE_COUNT", "oamSetAffineIndex() index is out of bounds, must be 0-127");
    if ((affineIndex >= @as(c_int, 0)) and (affineIndex < @as(c_int, 32))) {
        (blk: {
            const tmp = id;
            if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*.unnamed_0.unnamed_1.unnamed_1.rotationIndex = @as(@"u8", @bitCast(@as(i8, @truncate(affineIndex))));
        (blk: {
            const tmp = id;
            if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*.unnamed_0.unnamed_0.isSizeDouble = sizeDouble;
        (blk: {
            const tmp = id;
            if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*.unnamed_0.unnamed_0.isRotateScale = @as(c_int, 1) != 0;
    } else {
        (blk: {
            const tmp = id;
            if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*.unnamed_0.unnamed_0.isSizeDouble = @as(c_int, 0) != 0;
        (blk: {
            const tmp = id;
            if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*.unnamed_0.unnamed_0.isRotateScale = @as(c_int, 0) != 0;
    }
}
pub fn oamSetHidden(arg_oam: [*c]OamState, arg_id: c_int, arg_hide: bool) callconv(.C) void {
    var oam = arg_oam;
    _ = &oam;
    var id = arg_id;
    _ = &id;
    var hide = arg_hide;
    _ = &hide;
    _ = if ((oam == (&oamMain)) or (oam == (&oamSub))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 530), "oam == &oamMain || oam == &oamSub", "oamSetHidden() oam must be &oamMain or &oamSub");
    _ = if ((id >= @as(c_int, 0)) and (id < @as(c_int, 128))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 531), "id >= 0 && id < SPRITE_COUNT", "oamSetHidden() index is out of bounds, must be 0-127");
    _ = if (!(blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_0.isRotateScale) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 532), "!oam->oamMemory[id].isRotateScale", "oamSetHidden() cannot set hide on a RotateScale sprite");
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_0.isHidden = (if (@as(c_int, @intFromBool(hide)) != 0) @as(c_int, 1) else @as(c_int, 0)) != 0;
}
pub fn oamSetFlip(arg_oam: [*c]OamState, arg_id: c_int, arg_hflip: bool, arg_vflip: bool) callconv(.C) void {
    var oam = arg_oam;
    _ = &oam;
    var id = arg_id;
    _ = &id;
    var hflip = arg_hflip;
    _ = &hflip;
    var vflip = arg_vflip;
    _ = &vflip;
    _ = if ((oam == (&oamMain)) or (oam == (&oamSub))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 546), "oam == &oamMain || oam == &oamSub", "oamSetFlip() oam must be &oamMain or &oamSub");
    _ = if ((id >= @as(c_int, 0)) and (id < @as(c_int, 128))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 547), "id >= 0 && id < SPRITE_COUNT", "oamSetFlip() index is out of bounds, must be 0-127");
    _ = if (!(blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_0.isRotateScale) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 548), "!oam->oamMemory[id].isRotateScale", "oamSetFlip() cannot set flip on a RotateScale sprite");
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_1.unnamed_1.hFlip = (if (@as(c_int, @intFromBool(hflip)) != 0) @as(c_int, 1) else @as(c_int, 0)) != 0;
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_1.unnamed_1.vFlip = (if (@as(c_int, @intFromBool(vflip)) != 0) @as(c_int, 1) else @as(c_int, 0)) != 0;
}
pub fn oamSetMosaicEnabled(arg_oam: [*c]OamState, arg_id: c_int, arg_mosaic: bool) callconv(.C) void {
    var oam = arg_oam;
    _ = &oam;
    var id = arg_id;
    _ = &id;
    var mosaic = arg_mosaic;
    _ = &mosaic;
    _ = if ((oam == (&oamMain)) or (oam == (&oamSub))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 562), "oam == &oamMain || oam == &oamSub", "oamSetMosaicEnabled() oam must be &oamMain or &oamSub");
    _ = if ((id >= @as(c_int, 0)) and (id < @as(c_int, 128))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 563), "id >= 0 && id < SPRITE_COUNT", "oamSetMosaicEnabled() index is out of bounds, must be 0-127");
    (blk: {
        const tmp = id;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_0.unnamed_0.isMosaic = (if (@as(c_int, @intFromBool(mosaic)) != 0) @as(c_int, 1) else @as(c_int, 0)) != 0;
}
pub extern fn oamClear(oam: [*c]OamState, start: c_int, count: c_int) void;
pub fn oamClearSprite(arg_oam: [*c]OamState, arg_index_1: c_int) callconv(.C) void {
    var oam = arg_oam;
    _ = &oam;
    var index_1 = arg_index_1;
    _ = &index_1;
    _ = if ((index_1 >= @as(c_int, 0)) and (index_1 < @as(c_int, 128))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 585), "index >= 0 && index < SPRITE_COUNT", "oamClearSprite() index is out of bounds, must be 0-127");
    (blk: {
        const tmp = index_1;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.unnamed_1.attribute[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(uint16, @bitCast(@as(c_short, @truncate(@as(c_int, 2) << @intCast(8)))));
}
pub extern fn oamUpdate(oam: [*c]OamState) void;
pub extern fn oamRotateScale(oam: [*c]OamState, rotId: c_int, angle: c_int, sx: c_int, sy: c_int) void;
pub fn oamAffineTransformation(arg_oam: [*c]OamState, arg_rotId: c_int, arg_hdx: c_int, arg_hdy: c_int, arg_vdx: c_int, arg_vdy: c_int) callconv(.C) void {
    var oam = arg_oam;
    _ = &oam;
    var rotId = arg_rotId;
    _ = &rotId;
    var hdx = arg_hdx;
    _ = &hdx;
    var hdy = arg_hdy;
    _ = &hdy;
    var vdx = arg_vdx;
    _ = &vdx;
    var vdy = arg_vdy;
    _ = &vdy;
    _ = if ((rotId >= @as(c_int, 0)) and (rotId < @as(c_int, 32))) @as(c_int, 0) else __sassert("/opt/devkitpro/libnds/include/nds/arm9/sprite.h", @as(c_int, 622), "rotId >= 0 && rotId < 32", "oamAffineTransformation() rotId is out of bounds, must be 0-31");
    (blk: {
        const tmp = rotId;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamRotationMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamRotationMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.hdx = @as(int16, @bitCast(@as(c_short, @truncate(hdx))));
    (blk: {
        const tmp = rotId;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamRotationMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamRotationMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.vdx = @as(int16, @bitCast(@as(c_short, @truncate(vdx))));
    (blk: {
        const tmp = rotId;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamRotationMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamRotationMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.hdy = @as(int16, @bitCast(@as(c_short, @truncate(hdy))));
    (blk: {
        const tmp = rotId;
        if (tmp >= 0) break :blk oam.*.unnamed_0.oamRotationMemory + @as(usize, @intCast(tmp)) else break :blk oam.*.unnamed_0.oamRotationMemory - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.vdy = @as(int16, @bitCast(@as(c_short, @truncate(vdy))));
}
pub extern fn oamCountFragments(oam: [*c]OamState) c_int;
pub extern fn oamAllocReset(oam: [*c]OamState) void;
pub const WINDOW_0: c_int = 8192;
pub const WINDOW_1: c_int = 16384;
pub const WINDOW_OBJ: c_int = 32768;
pub const WINDOW_OUT: c_int = 65536;
pub const WINDOW = c_uint;
pub fn windowEnable(arg_w: WINDOW) callconv(.C) void {
    var w = arg_w;
    _ = &w;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67108864))).* |= @as(vu32, @bitCast(w & @as(c_uint, @bitCast((WINDOW_0 | WINDOW_1) | WINDOW_OBJ))));
}
pub fn windowDisable(arg_w: WINDOW) callconv(.C) void {
    var w = arg_w;
    _ = &w;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67108864))).* &= @as(vu32, @bitCast(~(w & @as(c_uint, @bitCast((WINDOW_0 | WINDOW_1) | WINDOW_OBJ)))));
}
pub fn windowEnableSub(arg_w: WINDOW) callconv(.C) void {
    var w = arg_w;
    _ = &w;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67112960))).* |= @as(vu32, @bitCast(w & @as(c_uint, @bitCast((WINDOW_0 | WINDOW_1) | WINDOW_OBJ))));
}
pub fn windowDisableSub(arg_w: WINDOW) callconv(.C) void {
    var w = arg_w;
    _ = &w;
    @as([*c]volatile vu32, @ptrFromInt(@as(c_int, 67112960))).* &= @as(vu32, @bitCast(~(w & @as(c_uint, @bitCast((WINDOW_0 | WINDOW_1) | WINDOW_OBJ)))));
}
pub extern fn windowSetBounds(window: WINDOW, left: @"u8", top: @"u8", right: @"u8", bottom: @"u8") void;
pub extern fn windowSetBoundsSub(window: WINDOW, left: @"u8", top: @"u8", right: @"u8", bottom: @"u8") void;
pub extern fn bgWindowEnable(id: c_int, window: WINDOW) void;
pub extern fn bgWindowDisable(id: c_int, window: WINDOW) void;
pub extern fn oamWindowEnable(oam: [*c]OamState, w: WINDOW) void;
pub extern fn oamWindowDisable(oam: [*c]OamState, w: WINDOW) void;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = __intptr_t;
pub const __sigset_t = c_ulong;
pub const suseconds_t = __suseconds_t;
pub const time_t = c_long;
pub const struct_timeval = extern struct {
    tv_sec: time_t = @import("std").mem.zeroes(time_t),
    tv_usec: suseconds_t = @import("std").mem.zeroes(suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: time_t = @import("std").mem.zeroes(time_t),
    tv_nsec: c_long = @import("std").mem.zeroes(c_long),
};
pub extern fn timespec2nsec(noalias ts: [*c]const struct_timespec) __uint64_t;
pub extern fn abstimespec2nsec(clock_id: __clockid_t, noalias ts: [*c]const struct_timespec) __uint64_t;
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    it_value: struct_timespec = @import("std").mem.zeroes(struct_timespec),
};
pub const sigset_t = __sigset_t;
pub const __fd_mask = c_ulong;
pub const fd_mask = __fd_mask;
pub const struct_fd_set = extern struct {
    __fds_bits: [1]__fd_mask = @import("std").mem.zeroes([1]__fd_mask),
};
pub const fd_set = struct_fd_set;
pub extern fn select(__n: c_int, __readfds: [*c]fd_set, __writefds: [*c]fd_set, __exceptfds: [*c]fd_set, __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__n: c_int, __readfds: [*c]fd_set, __writefds: [*c]fd_set, __exceptfds: [*c]fd_set, __timeout: [*c]const struct_timespec, __set: [*c]const sigset_t) c_int;
pub const in_addr_t = __uint32_t;
pub const in_port_t = __uint16_t;
pub const u_register_t = __uintptr_t;
pub const u_char = u8;
pub const u_short = c_ushort;
pub const u_int = c_uint;
pub const u_long = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const ulong = c_ulong;
pub const blkcnt_t = __blkcnt_t;
pub const blksize_t = __blksize_t;
pub const clock_t = c_ulong;
pub const daddr_t = __daddr_t;
pub const caddr_t = [*c]u8;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
pub const id_t = __id_t;
pub const ino_t = __ino_t;
pub const off_t = __off_t;
pub const dev_t = __dev_t;
pub const uid_t = __uid_t;
pub const gid_t = __gid_t;
pub const pid_t = __pid_t;
pub const key_t = __key_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const clockid_t = __clockid_t;
pub const timer_t = __timer_t;
pub const useconds_t = __useconds_t;
pub const sbintime_t = __int64_t;
pub const struct_sched_param = extern struct {
    sched_priority: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct___pthread_t = opaque {};
pub const pthread_t = ?*struct___pthread_t;
pub const pthread_attr_t = extern struct {
    stackaddr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    stacksize: c_int = @import("std").mem.zeroes(c_int),
    schedparam: struct_sched_param = @import("std").mem.zeroes(struct_sched_param),
    detachstate: c_int = @import("std").mem.zeroes(c_int),
};
const union_unnamed_15 = extern union {
    normal: _LOCK_T,
    recursive: _LOCK_RECURSIVE_T,
};
pub const pthread_mutex_t = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    unnamed_0: union_unnamed_15 = @import("std").mem.zeroes(union_unnamed_15),
};
pub const pthread_mutexattr_t = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
};
pub const pthread_cond_t = extern struct {
    clock_id: clockid_t = @import("std").mem.zeroes(clockid_t),
    cond: _COND_T = @import("std").mem.zeroes(_COND_T),
};
pub const pthread_condattr_t = extern struct {
    clock_id: clockid_t = @import("std").mem.zeroes(clockid_t),
};
pub const pthread_key_t = __uint32_t;
pub const pthread_once_t = extern struct {
    status: c_int = @import("std").mem.zeroes(c_int),
};
pub const pthread_barrier_t = extern struct {
    lock: _LOCK_T = @import("std").mem.zeroes(_LOCK_T),
    cond: _COND_T = @import("std").mem.zeroes(_COND_T),
    reload: c_uint = @import("std").mem.zeroes(c_uint),
    counter: c_uint = @import("std").mem.zeroes(c_uint),
    cycle: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const pthread_barrierattr_t = extern struct {}; // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_pthreadtypes.h:214:12: warning: struct demoted to opaque type - has bitfield
pub const pthread_rwlock_t = opaque {};
pub const pthread_rwlockattr_t = extern struct {};
pub extern var environ: [*c][*c]u8;
pub extern fn _exit(__status: c_int) noreturn;
pub extern fn access(__path: [*c]const u8, __amode: c_int) c_int;
pub extern fn alarm(__secs: c_uint) c_uint;
pub extern fn chdir(__path: [*c]const u8) c_int;
pub extern fn chmod(__path: [*c]const u8, __mode: mode_t) c_int;
pub extern fn chown(__path: [*c]const u8, __owner: uid_t, __group: gid_t) c_int;
pub extern fn chroot(__path: [*c]const u8) c_int;
pub extern fn close(__fildes: c_int) c_int;
pub extern fn confstr(__name: c_int, __buf: [*c]u8, __len: usize) usize;
pub extern fn daemon(nochdir: c_int, noclose: c_int) c_int;
pub extern fn dup(__fildes: c_int) c_int;
pub extern fn dup2(__fildes: c_int, __fildes2: c_int) c_int;
pub extern fn endusershell() void;
pub extern fn execl(__path: [*c]const u8, [*c]const u8, ...) c_int;
pub extern fn execle(__path: [*c]const u8, [*c]const u8, ...) c_int;
pub extern fn execlp(__file: [*c]const u8, [*c]const u8, ...) c_int;
pub extern fn execlpe(__file: [*c]const u8, [*c]const u8, ...) c_int;
pub extern fn execv(__path: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn execve(__path: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn execvp(__file: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn faccessat(__dirfd: c_int, __path: [*c]const u8, __mode: c_int, __flags: c_int) c_int;
pub extern fn fchdir(__fildes: c_int) c_int;
pub extern fn fchmod(__fildes: c_int, __mode: mode_t) c_int;
pub extern fn fchown(__fildes: c_int, __owner: uid_t, __group: gid_t) c_int;
pub extern fn fchownat(__dirfd: c_int, __path: [*c]const u8, __owner: uid_t, __group: gid_t, __flags: c_int) c_int;
pub extern fn fexecve(__fd: c_int, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn fork() pid_t;
pub extern fn fpathconf(__fd: c_int, __name: c_int) c_long;
pub extern fn fsync(__fd: c_int) c_int;
pub extern fn fdatasync(__fd: c_int) c_int;
pub extern fn getcwd(__buf: [*c]u8, __size: usize) [*c]u8;
pub extern fn getdomainname(__name: [*c]u8, __len: usize) c_int;
pub extern fn getentropy(?*anyopaque, usize) c_int;
pub extern fn getegid() gid_t;
pub extern fn geteuid() uid_t;
pub extern fn getgid() gid_t;
pub extern fn getgroups(__gidsetsize: c_int, __grouplist: [*c]gid_t) c_int;
pub extern fn gethostid() c_long;
pub extern fn getlogin() [*c]u8;
pub extern fn getpass(__prompt: [*c]const u8) [*c]u8;
pub extern fn getpagesize() c_int;
pub extern fn getpeereid(c_int, [*c]uid_t, [*c]gid_t) c_int;
pub extern fn getpgid(pid_t) pid_t;
pub extern fn getpgrp() pid_t;
pub extern fn getpid() pid_t;
pub extern fn getppid() pid_t;
pub extern fn getsid(pid_t) pid_t;
pub extern fn getuid() uid_t;
pub extern fn getusershell() [*c]u8;
pub extern fn getwd(__buf: [*c]u8) [*c]u8;
pub extern fn iruserok(raddr: c_ulong, superuser: c_int, ruser: [*c]const u8, luser: [*c]const u8) c_int;
pub extern fn isatty(__fildes: c_int) c_int;
pub extern fn issetugid() c_int;
pub extern fn lchown(__path: [*c]const u8, __owner: uid_t, __group: gid_t) c_int;
pub extern fn link(__path1: [*c]const u8, __path2: [*c]const u8) c_int;
pub extern fn linkat(__dirfd1: c_int, __path1: [*c]const u8, __dirfd2: c_int, __path2: [*c]const u8, __flags: c_int) c_int;
pub extern fn nice(__nice_value: c_int) c_int;
pub extern fn lseek(__fildes: c_int, __offset: off_t, __whence: c_int) off_t;
pub extern fn lockf(__fd: c_int, __cmd: c_int, __len: off_t) c_int;
pub extern fn pathconf(__path: [*c]const u8, __name: c_int) c_long;
pub extern fn pause() c_int;
pub extern fn pthread_atfork(?*const fn () callconv(.C) void, ?*const fn () callconv(.C) void, ?*const fn () callconv(.C) void) c_int;
pub extern fn pipe(__fildes: [*c]c_int) c_int;
pub extern fn pread(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize, __offset: off_t) isize;
pub extern fn pwrite(__fd: c_int, __buf: ?*const anyopaque, __nbytes: usize, __offset: off_t) isize;
pub extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbyte: usize) c_int;
pub extern fn rresvport(__alport: [*c]c_int) c_int;
pub extern fn revoke(__path: [*c]u8) c_int;
pub extern fn rmdir(__path: [*c]const u8) c_int;
pub extern fn ruserok(rhost: [*c]const u8, superuser: c_int, ruser: [*c]const u8, luser: [*c]const u8) c_int;
pub extern fn sbrk(__incr: ptrdiff_t) ?*anyopaque;
pub extern fn setegid(__gid: gid_t) c_int;
pub extern fn seteuid(__uid: uid_t) c_int;
pub extern fn setgid(__gid: gid_t) c_int;
pub extern fn setgroups(ngroups: c_int, grouplist: [*c]const gid_t) c_int;
pub extern fn sethostname([*c]const u8, usize) c_int;
pub extern fn setpgid(__pid: pid_t, __pgid: pid_t) c_int;
pub extern fn setpgrp() c_int;
pub extern fn setregid(__rgid: gid_t, __egid: gid_t) c_int;
pub extern fn setreuid(__ruid: uid_t, __euid: uid_t) c_int;
pub extern fn setsid() pid_t;
pub extern fn setuid(__uid: uid_t) c_int;
pub extern fn setusershell() void;
pub extern fn sleep(__seconds: c_uint) c_uint;
pub extern fn sysconf(__name: c_int) c_long;
pub extern fn tcgetpgrp(__fildes: c_int) pid_t;
pub extern fn tcsetpgrp(__fildes: c_int, __pgrp_id: pid_t) c_int;
pub extern fn ttyname(__fildes: c_int) [*c]u8;
pub extern fn ttyname_r(c_int, [*c]u8, usize) c_int;
pub extern fn unlink(__path: [*c]const u8) c_int;
pub extern fn usleep(__useconds: useconds_t) c_int;
pub extern fn vhangup() c_int;
pub extern fn write(__fd: c_int, __buf: ?*const anyopaque, __nbyte: usize) c_int;
pub extern var optarg: [*c]u8;
pub extern var optind: c_int;
pub extern var opterr: c_int;
pub extern var optopt: c_int;
pub extern fn getopt(c_int, [*c]const [*c]u8, [*c]const u8) c_int;
pub extern var optreset: c_int;
pub extern fn vfork() c_int;
pub extern fn ftruncate(__fd: c_int, __length: off_t) c_int;
pub extern fn truncate([*c]const u8, __length: off_t) c_int;
pub extern fn getdtablesize() c_int;
pub extern fn ualarm(__useconds: useconds_t, __interval: useconds_t) useconds_t;
pub extern fn gethostname(__name: [*c]u8, __len: usize) c_int;
pub extern fn setdtablesize(c_int) c_int;
pub extern fn sync() void;
pub extern fn readlink(noalias __path: [*c]const u8, noalias __buf: [*c]u8, __buflen: usize) isize;
pub extern fn symlink(__name1: [*c]const u8, __name2: [*c]const u8) c_int;
pub extern fn readlinkat(__dirfd1: c_int, noalias __path: [*c]const u8, noalias __buf: [*c]u8, __buflen: usize) isize;
pub extern fn symlinkat([*c]const u8, c_int, [*c]const u8) c_int;
pub extern fn unlinkat(c_int, [*c]const u8, c_int) c_int;
pub extern fn nand_ReadSectors(sector: sec_t, numSectors: sec_t, buffer: ?*anyopaque) bool;
pub extern fn nand_WriteSectors(sector: sec_t, numSectors: sec_t, buffer: ?*const anyopaque) bool;
pub extern fn nand_GetSize(...) isize;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):90:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):96:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):193:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):215:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):223:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`"); // (no file):354:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`"); // (no file):355:9
pub const __EXP = @compileError("unable to translate macro: undefined identifier `__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h:15:9
pub const __STDINT_EXP = @compileError("unable to translate macro: undefined identifier `__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h:16:9
pub const SIG_ATOMIC_MIN = @compileError("unable to translate macro: undefined identifier `INT_MAX`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h:349:9
pub const SIG_ATOMIC_MAX = @compileError("unable to translate macro: undefined identifier `INT_MAX`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h:350:9
pub const ITCM_CODE = @compileError("unable to translate macro: undefined identifier `section`"); // /opt/devkitpro/libnds/include/nds/ndstypes.h:43:9
pub const DTCM_DATA = @compileError("unable to translate macro: undefined identifier `section`"); // /opt/devkitpro/libnds/include/nds/ndstypes.h:45:9
pub const DTCM_BSS = @compileError("unable to translate macro: undefined identifier `section`"); // /opt/devkitpro/libnds/include/nds/ndstypes.h:46:9
pub const TWL_CODE = @compileError("unable to translate macro: undefined identifier `section`"); // /opt/devkitpro/libnds/include/nds/ndstypes.h:48:9
pub const TWL_DATA = @compileError("unable to translate macro: undefined identifier `section`"); // /opt/devkitpro/libnds/include/nds/ndstypes.h:49:9
pub const TWL_BSS = @compileError("unable to translate macro: undefined identifier `section`"); // /opt/devkitpro/libnds/include/nds/ndstypes.h:50:9
pub const ALIGN = @compileError("unable to translate macro: undefined identifier `aligned`"); // /opt/devkitpro/libnds/include/nds/ndstypes.h:53:9
pub const PACKED = @compileError("unable to translate macro: undefined identifier `packed`"); // /opt/devkitpro/libnds/include/nds/ndstypes.h:56:9
pub const GETRAWSIZE = @compileError("unable to translate macro: undefined identifier `_size`"); // /opt/devkitpro/libnds/include/nds/ndstypes.h:63:9
pub const GETRAWEND = @compileError("unable to translate macro: undefined identifier `_end`"); // /opt/devkitpro/libnds/include/nds/ndstypes.h:64:9
pub const _LONG_DOUBLE = @compileError("unable to translate: TODO long double"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h:37:9
pub const _ATTRIBUTE = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h:43:9
pub const _ELIDABLE_INLINE = @compileError("unable to translate C expr: unexpected token 'static'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h:69:9
pub const _NOINLINE = @compileError("unable to translate macro: undefined identifier `__noinline__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h:73:9
pub const _NOINLINE_STATIC = @compileError("unable to translate C expr: unexpected token 'static'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h:74:9
pub const assert = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/assert.h:16:10
pub const __ASSERT_FUNC = @compileError("unable to translate C expr: unexpected token 'an identifier'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/assert.h:26:12
pub const static_assert = @compileError("unable to translate C expr: unexpected token '_Static_assert'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/assert.h:45:10
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'"); // /usr/lib/zig/include/stddef.h:116:9
pub const __DOTS = @compileError("unable to translate C expr: unexpected token ','"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:50:9
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ')'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:54:10
pub const __long_double_t = @compileError("unable to translate: TODO long double"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:58:9
pub const __attribute_format_strfmon__ = @compileError("unable to translate C expr: unexpected token ''"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:62:9
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:63:9
pub const __compiler_membar = @compileError("unable to translate C expr: unexpected token '__asm'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:130:9
pub const __CONCAT1 = @compileError("unable to translate C expr: unexpected token '##'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:165:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:167:9
pub const __const = @compileError("unable to translate C expr: unexpected token 'const'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:170:9
pub const __volatile = @compileError("unable to translate C expr: unexpected token 'volatile'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:172:9
pub const __weak_symbol = @compileError("unable to translate macro: undefined identifier `__weak__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:217:9
pub const __dead2 = @compileError("unable to translate macro: undefined identifier `__noreturn__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:230:9
pub const __pure2 = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:231:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__unused__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:232:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__used__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:233:9
pub const __packed = @compileError("unable to translate macro: undefined identifier `__packed__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:234:9
pub const __aligned = @compileError("unable to translate macro: undefined identifier `__aligned__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:235:9
pub const __section = @compileError("unable to translate macro: undefined identifier `__section__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:236:9
pub const __alloc_size = @compileError("unable to translate macro: undefined identifier `__alloc_size__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:239:9
pub const __alloc_size2 = @compileError("unable to translate macro: undefined identifier `__alloc_size__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:240:9
pub const __alloc_align = @compileError("unable to translate macro: undefined identifier `__alloc_align__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:246:9
pub const __generic = @compileError("unable to translate C expr: unexpected token '_Generic'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:338:9
pub const __min_size = @compileError("unable to translate C expr: unexpected token 'static'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:356:9
pub const __malloc_like = @compileError("unable to translate macro: undefined identifier `__malloc__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:362:9
pub const __pure = @compileError("unable to translate macro: undefined identifier `__pure__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:363:9
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:370:9
pub const __noinline = @compileError("unable to translate macro: undefined identifier `__noinline__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:376:9
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `__nonnull__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:382:9
pub const __nonnull_all = @compileError("unable to translate macro: undefined identifier `__nonnull__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:383:9
pub const __fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:390:9
pub const __result_use_check = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:391:9
pub const __returns_twice = @compileError("unable to translate macro: undefined identifier `__returns_twice__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:398:9
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:421:9
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token 'restrict'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:434:9
pub const __null_sentinel = @compileError("unable to translate macro: undefined identifier `__sentinel__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:476:9
pub const __exported = @compileError("unable to translate macro: undefined identifier `__visibility__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:477:9
pub const __hidden = @compileError("unable to translate macro: undefined identifier `__visibility__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:480:9
pub const __containerof = @compileError("unable to translate macro: undefined identifier `__x`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:501:9
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:523:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:525:9
pub const __format_arg = @compileError("unable to translate macro: undefined identifier `__format_arg__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:527:9
pub const __strfmonlike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:528:9
pub const __strftimelike = @compileError("unable to translate macro: undefined identifier `__format__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:530:9
pub const __printf0like = @compileError("unable to translate C expr: unexpected token ''"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:540:9
pub const __strong_reference = @compileError("unable to translate macro: undefined identifier `__alias__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:544:9
pub const __weak_reference = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:548:9
pub const __warn_references = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:551:9
pub const __sym_compat = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:555:9
pub const __sym_default = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:557:9
pub const __FBSDID = @compileError("unable to translate macro: undefined identifier `__hack`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:592:9
pub const __RCSID = @compileError("unable to translate macro: undefined identifier `__hack`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:596:9
pub const __RCSID_SOURCE = @compileError("unable to translate macro: undefined identifier `__hack`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:600:9
pub const __SCCSID = @compileError("unable to translate macro: undefined identifier `__hack`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:604:9
pub const __COPYRIGHT = @compileError("unable to translate macro: undefined identifier `__hack`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:608:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token 'const'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:612:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token 'volatile'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:616:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token 'const'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:620:9
pub const __NULLABILITY_PRAGMA_PUSH = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:633:9
pub const __NULLABILITY_PRAGMA_POP = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:635:9
pub const __arg_type_tag = @compileError("unable to translate macro: undefined identifier `__argument_with_type_tag__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:647:9
pub const __datatype_type_tag = @compileError("unable to translate macro: undefined identifier `__type_tag_for_datatype__`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:649:9
pub const __lock_annotate = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:669:9
pub const __lockable = @compileError("unable to translate macro: undefined identifier `lockable`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:677:9
pub const __locks_exclusive = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:680:9
pub const __locks_shared = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:682:9
pub const __trylocks_exclusive = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:686:9
pub const __trylocks_shared = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:688:9
pub const __unlocks = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:692:9
pub const __asserts_exclusive = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:695:9
pub const __asserts_shared = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:697:9
pub const __requires_exclusive = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:701:9
pub const __requires_shared = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:703:9
pub const __requires_unlocked = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:705:9
pub const __no_lock_analysis = @compileError("unable to translate macro: undefined identifier `no_thread_safety_analysis`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:709:9
pub const __nosanitizeaddress = @compileError("unable to translate macro: undefined identifier `no_sanitize`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:721:9
pub const __nosanitizememory = @compileError("unable to translate macro: undefined identifier `no_sanitize`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:722:9
pub const __nosanitizethread = @compileError("unable to translate macro: undefined identifier `no_sanitize`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:724:9
pub const __guarded_by = @compileError("unable to translate macro: undefined identifier `guarded_by`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:732:9
pub const __pt_guarded_by = @compileError("unable to translate macro: undefined identifier `pt_guarded_by`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:733:9
pub const __align_up = @compileError("unable to translate macro: undefined identifier `__builtin_align_up`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:750:9
pub const __align_down = @compileError("unable to translate macro: undefined identifier `__builtin_align_down`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:751:9
pub const __is_aligned = @compileError("unable to translate macro: undefined identifier `__builtin_is_aligned`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h:752:9
pub const __LOCK_INIT = @compileError("unable to translate C expr: unexpected token '='"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h:63:9
pub const __LOCK_INIT_RECURSIVE = @compileError("unable to translate C expr: unexpected token '='"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h:66:9
pub const __COND_INIT = @compileError("unable to translate C expr: unexpected token '='"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h:69:9
pub const _ATEXIT_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:106:10
pub const _REENT_SMALL_CHECK_INIT = @compileError("unable to translate C expr: unexpected token ''"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:146:9
pub const _REENT_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:657:9
pub const _REENT_INIT_PTR_ZEROED = @compileError("unable to translate C expr: unexpected token '{'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:704:9
pub const _REENT_CHECK_RAND48 = @compileError("unable to translate C expr: unexpected token ''"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:718:9
pub const _REENT_CHECK_MP = @compileError("unable to translate C expr: unexpected token ''"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:719:9
pub const _REENT_CHECK_TM = @compileError("unable to translate C expr: unexpected token ''"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:720:9
pub const _REENT_CHECK_ASCTIME_BUF = @compileError("unable to translate C expr: unexpected token ''"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:721:9
pub const _REENT_CHECK_EMERGENCY = @compileError("unable to translate C expr: unexpected token ''"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:722:9
pub const _REENT_CHECK_MISC = @compileError("unable to translate C expr: unexpected token ''"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:723:9
pub const _REENT_CHECK_SIGNAL_BUF = @compileError("unable to translate C expr: unexpected token ''"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:724:9
pub const _REENT_INIT_PTR = @compileError("unable to translate C expr: unexpected token '{'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h:772:9
pub const alloca = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/alloca.h:16:9
pub const sassert = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /opt/devkitpro/libnds/include/nds/arm9/sassert.h:49:9
pub const GL_STATIC_INL = @compileError("unable to translate C expr: unexpected token 'static'"); // /opt/devkitpro/libnds/include/nds/arm9/videoGL.h:52:9
pub const TIMEVAL_TO_TIMESPEC = @compileError("unable to translate C expr: unexpected token 'do'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/timespec.h:41:9
pub const TIMESPEC_TO_TIMEVAL = @compileError("unable to translate C expr: unexpected token 'do'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/timespec.h:46:9
pub const fds_bits = @compileError("unable to translate macro: undefined identifier `__fds_bits`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/select.h:56:9
pub const FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/select.h:60:9
pub const FD_COPY = @compileError("unable to translate C expr: expected ')' instead got '='"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/select.h:62:9
pub const FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/select.h:65:9
pub const FD_ZERO = @compileError("unable to translate macro: undefined identifier `_p`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/select.h:66:9
pub const physadr = @compileError("unable to translate macro: undefined identifier `physadr_t`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h:51:11
pub const quad = @compileError("unable to translate macro: undefined identifier `quad_t`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h:52:11
pub const _PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_pthreadtypes.h:153:9
pub const PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP = @compileError("unable to translate C expr: unexpected token '{'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_pthreadtypes.h:154:9
pub const _PTHREAD_COND_INITIALIZER = @compileError("unable to translate macro: undefined identifier `CLOCK_REALTIME`"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_pthreadtypes.h:164:9
pub const _PTHREAD_ONCE_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_pthreadtypes.h:181:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 17);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 6);
pub const __clang_version__ = "17.0.6 ";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 17.0.6";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __PIE__ = @as(c_int, 2);
pub const __pie__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __k8 = @as(c_int, 1);
pub const __k8__ = @as(c_int, 1);
pub const __tune_k8__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __WAITPKG__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __PTWRITE__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const ARM9 = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const NDS_INCLUDE = "";
pub const __LIBNDSVERSION_H__ = "";
pub const _LIBNDS_MAJOR_ = @as(c_int, 1);
pub const _LIBNDS_MINOR_ = @as(c_int, 8);
pub const _LIBNDS_PATCH_ = @as(c_int, 0);
pub const _LIBNDS_STRING = "libNDS Release 1.8.0";
pub const _NDSTYPES_INCLUDE = "";
pub const _STDINT_H = "";
pub const _MACHINE__DEFAULT_TYPES_H = "";
pub const _SYS_FEATURES_H = "";
pub const _NEWLIB_VERSION_H__ = @as(c_int, 1);
pub const _NEWLIB_VERSION = "4.4.0";
pub const __NEWLIB__ = @as(c_int, 4);
pub const __NEWLIB_MINOR__ = @as(c_int, 4);
pub const __NEWLIB_PATCHLEVEL__ = @as(c_int, 0);
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __GNUC_PREREQ__(ma: anytype, mi: anytype) @TypeOf(__GNUC_PREREQ(ma, mi)) {
    _ = &ma;
    _ = &mi;
    return __GNUC_PREREQ(ma, mi);
}
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __ATFILE_VISIBLE = @as(c_int, 1);
pub const __BSD_VISIBLE = @as(c_int, 1);
pub const __GNU_VISIBLE = @as(c_int, 0);
pub const __ISO_C_VISIBLE = @as(c_int, 2011);
pub const __LARGEFILE_VISIBLE = @as(c_int, 0);
pub const __MISC_VISIBLE = @as(c_int, 1);
pub const __POSIX_VISIBLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 200809, .decimal);
pub const __SVID_VISIBLE = @as(c_int, 1);
pub const __XSI_VISIBLE = @as(c_int, 0);
pub const __SSP_FORTIFY_LEVEL = @as(c_int, 0);
pub const _POSIX_MONOTONIC_CLOCK = @as(c_long, 200112);
pub const _POSIX_TIMERS = @as(c_int, 1);
pub const _POSIX_THREADS = @as(c_int, 1);
pub const _POSIX_SEMAPHORES = @as(c_int, 1);
pub const _POSIX_BARRIERS = @as(c_long, 200112);
pub const _POSIX_READER_WRITER_LOCKS = @as(c_long, 200112);
pub const _UNIX98_THREAD_MUTEX_ATTRIBUTES = @as(c_int, 1);
pub const __have_longlong64 = @as(c_int, 1);
pub const __have_long64 = @as(c_int, 1);
pub const ___int8_t_defined = @as(c_int, 1);
pub const ___int16_t_defined = @as(c_int, 1);
pub const ___int32_t_defined = @as(c_int, 1);
pub const ___int64_t_defined = @as(c_int, 1);
pub const ___int_least8_t_defined = @as(c_int, 1);
pub const ___int_least16_t_defined = @as(c_int, 1);
pub const ___int_least32_t_defined = @as(c_int, 1);
pub const ___int_least64_t_defined = @as(c_int, 1);
pub const _SYS__INTSUP_H = "";
pub const signed = @as(c_int, 0);
pub const unsigned = @as(c_int, 0);
pub const char = @as(c_int, 0);
pub const short = @as(c_int, 1);
pub const __int20 = @as(c_int, 2);
pub const __int20__ = @as(c_int, 2);
pub const int = @as(c_int, 2);
pub const long = @as(c_int, 4);
pub const _INTPTR_EQ_LONG = "";
pub const __INT8 = "hh";
pub const __INT16 = "h";
pub const __INT32 = "";
pub const __INT64 = "l";
pub const __FAST8 = "hh";
pub const __FAST16 = "h";
pub const __FAST32 = "";
pub const __FAST64 = "l";
pub const __LEAST8 = "hh";
pub const __LEAST16 = "h";
pub const __LEAST32 = "";
pub const __LEAST64 = "l";
pub const _SYS__STDINT_H = "";
pub const _INT8_T_DECLARED = "";
pub const _UINT8_T_DECLARED = "";
pub const __int8_t_defined = @as(c_int, 1);
pub const _INT16_T_DECLARED = "";
pub const _UINT16_T_DECLARED = "";
pub const __int16_t_defined = @as(c_int, 1);
pub const _INT32_T_DECLARED = "";
pub const _UINT32_T_DECLARED = "";
pub const __int32_t_defined = @as(c_int, 1);
pub const _INT64_T_DECLARED = "";
pub const _UINT64_T_DECLARED = "";
pub const __int64_t_defined = @as(c_int, 1);
pub const _INTMAX_T_DECLARED = "";
pub const _UINTMAX_T_DECLARED = "";
pub const _INTPTR_T_DECLARED = "";
pub const _UINTPTR_T_DECLARED = "";
pub const __int_least8_t_defined = @as(c_int, 1);
pub const __int_least16_t_defined = @as(c_int, 1);
pub const __int_least32_t_defined = @as(c_int, 1);
pub const __int_least64_t_defined = @as(c_int, 1);
pub const __int_fast8_t_defined = @as(c_int, 1);
pub const __int_fast16_t_defined = @as(c_int, 1);
pub const __int_fast32_t_defined = @as(c_int, 1);
pub const __int_fast64_t_defined = @as(c_int, 1);
pub const INTPTR_MIN = -__INTPTR_MAX__ - @as(c_int, 1);
pub const INTPTR_MAX = __INTPTR_MAX__;
pub const UINTPTR_MAX = __UINTPTR_MAX__;
pub const INT8_MIN = -__INT8_MAX__ - @as(c_int, 1);
pub const INT8_MAX = __INT8_MAX__;
pub const UINT8_MAX = __UINT8_MAX__;
pub const INT_LEAST8_MIN = -__INT_LEAST8_MAX__ - @as(c_int, 1);
pub const INT_LEAST8_MAX = __INT_LEAST8_MAX__;
pub const UINT_LEAST8_MAX = __UINT_LEAST8_MAX__;
pub const INT16_MIN = -__INT16_MAX__ - @as(c_int, 1);
pub const INT16_MAX = __INT16_MAX__;
pub const UINT16_MAX = __UINT16_MAX__;
pub const INT_LEAST16_MIN = -__INT_LEAST16_MAX__ - @as(c_int, 1);
pub const INT_LEAST16_MAX = __INT_LEAST16_MAX__;
pub const UINT_LEAST16_MAX = __UINT_LEAST16_MAX__;
pub const INT32_MIN = -__INT32_MAX__ - @as(c_int, 1);
pub const INT32_MAX = __INT32_MAX__;
pub const UINT32_MAX = __UINT32_MAX__;
pub const INT_LEAST32_MIN = -__INT_LEAST32_MAX__ - @as(c_int, 1);
pub const INT_LEAST32_MAX = __INT_LEAST32_MAX__;
pub const UINT_LEAST32_MAX = __UINT_LEAST32_MAX__;
pub const INT64_MIN = -__INT64_MAX__ - @as(c_int, 1);
pub const INT64_MAX = __INT64_MAX__;
pub const UINT64_MAX = __UINT64_MAX__;
pub const INT_LEAST64_MIN = -__INT_LEAST64_MAX__ - @as(c_int, 1);
pub const INT_LEAST64_MAX = __INT_LEAST64_MAX__;
pub const UINT_LEAST64_MAX = __UINT_LEAST64_MAX__;
pub const INT_FAST8_MIN = -__INT_FAST8_MAX__ - @as(c_int, 1);
pub const INT_FAST8_MAX = __INT_FAST8_MAX__;
pub const UINT_FAST8_MAX = __UINT_FAST8_MAX__;
pub const INT_FAST16_MIN = -__INT_FAST16_MAX__ - @as(c_int, 1);
pub const INT_FAST16_MAX = __INT_FAST16_MAX__;
pub const UINT_FAST16_MAX = __UINT_FAST16_MAX__;
pub const INT_FAST32_MIN = -__INT_FAST32_MAX__ - @as(c_int, 1);
pub const INT_FAST32_MAX = __INT_FAST32_MAX__;
pub const UINT_FAST32_MAX = __UINT_FAST32_MAX__;
pub const INT_FAST64_MIN = -__INT_FAST64_MAX__ - @as(c_int, 1);
pub const INT_FAST64_MAX = __INT_FAST64_MAX__;
pub const UINT_FAST64_MAX = __UINT_FAST64_MAX__;
pub const INTMAX_MAX = __INTMAX_MAX__;
pub const INTMAX_MIN = -INTMAX_MAX - @as(c_int, 1);
pub const UINTMAX_MAX = __UINTMAX_MAX__;
pub const SIZE_MAX = __SIZE_MAX__;
pub const PTRDIFF_MAX = __PTRDIFF_MAX__;
pub const PTRDIFF_MIN = -PTRDIFF_MAX - @as(c_int, 1);
pub const WCHAR_MIN = (-@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex) - @as(c_int, 1)) + '\x00';
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WINT_MAX = __WINT_MAX__;
pub const WINT_MIN = @as(c_uint, 0);
pub inline fn INT8_C(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn UINT8_C(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn INT16_C(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn UINT16_C(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn INT32_C(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
// pub const packed_struct = struct_PACKED;
pub inline fn GETRAW(name: anytype) @TypeOf(name) {
    _ = &name;
    return name;
}
pub inline fn BIT(n: anytype) @TypeOf(@as(c_int, 1) << n) {
    _ = &n;
    return @as(c_int, 1) << n;
}
pub const TRUE = @as(c_int, 1);
pub const FALSE = @as(c_int, 0);
pub const BIOS_H_INCLUDE = "";
pub const COPY_MODE_HWORD = @as(c_int, 0);
pub const COPY_MODE_WORD = BIT(@as(c_int, 26));
pub const COPY_MODE_COPY = @as(c_int, 0);
pub const COPY_MODE_FILL = BIT(@as(c_int, 24));
pub const NDS_CARD_INCLUDE = "";
pub const REG_CARD_DATA_RD = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04100010, .hex)).*;
pub const REG_AUXSPICNT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040001A0, .hex)).*;
pub const REG_AUXSPICNTH = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040001A1, .hex)).*;
pub const REG_AUXSPIDATA = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040001A2, .hex)).*;
pub const REG_ROMCTRL = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040001A4, .hex)).*;
pub const REG_CARD_COMMAND = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040001A8, .hex));
pub const REG_CARD_1B0 = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040001B0, .hex)).*;
pub const REG_CARD_1B4 = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040001B4, .hex)).*;
pub const REG_CARD_1B8 = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040001B8, .hex)).*;
pub const REG_CARD_1BA = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040001BA, .hex)).*;
pub const CARD_CR1_ENABLE = @as(c_int, 0x80);
pub const CARD_CR1_IRQ = @as(c_int, 0x40);
pub const SPI_EEPROM_WRSR = @as(c_int, 0x01);
pub const SPI_EEPROM_PP = @as(c_int, 0x02);
pub const SPI_EEPROM_READ = @as(c_int, 0x03);
pub const SPI_EEPROM_WRDI = @as(c_int, 0x04);
pub const SPI_EEPROM_RDSR = @as(c_int, 0x05);
pub const SPI_EEPROM_WREN = @as(c_int, 0x06);
pub const SPI_EEPROM_PW = @as(c_int, 0x0a);
pub const SPI_EEPROM_FAST = @as(c_int, 0x0b);
pub const SPI_EEPROM_RDID = @as(c_int, 0x9f);
pub const SPI_EEPROM_RDP = @as(c_int, 0xab);
pub const SPI_EEPROM_DPD = @as(c_int, 0xb9);
pub const CARD_ACTIVATE = @as(c_int, 1) << @as(c_int, 31);
pub const CARD_WR = @as(c_int, 1) << @as(c_int, 30);
pub const CARD_nRESET = @as(c_int, 1) << @as(c_int, 29);
pub const CARD_SEC_LARGE = @as(c_int, 1) << @as(c_int, 28);
pub const CARD_CLK_SLOW = @as(c_int, 1) << @as(c_int, 27);
pub inline fn CARD_BLK_SIZE(n: anytype) @TypeOf((n & @as(c_int, 0x7)) << @as(c_int, 24)) {
    _ = &n;
    return (n & @as(c_int, 0x7)) << @as(c_int, 24);
}
pub const CARD_SEC_CMD = @as(c_int, 1) << @as(c_int, 22);
pub inline fn CARD_DELAY2(n: anytype) @TypeOf((n & @as(c_int, 0x3F)) << @as(c_int, 16)) {
    _ = &n;
    return (n & @as(c_int, 0x3F)) << @as(c_int, 16);
}
pub const CARD_SEC_SEED = @as(c_int, 1) << @as(c_int, 15);
pub const CARD_SEC_EN = @as(c_int, 1) << @as(c_int, 14);
pub const CARD_SEC_DAT = @as(c_int, 1) << @as(c_int, 13);
pub inline fn CARD_DELAY1(n: anytype) @TypeOf(n & @as(c_int, 0x1FFF)) {
    _ = &n;
    return n & @as(c_int, 0x1FFF);
}
pub const CARD_BUSY = @as(c_int, 1) << @as(c_int, 31);
pub const CARD_DATA_READY = @as(c_int, 1) << @as(c_int, 23);
pub const CARD_CMD_DUMMY = @as(c_int, 0x9F);
pub const CARD_CMD_HEADER_READ = @as(c_int, 0x00);
pub const CARD_CMD_HEADER_CHIPID = @as(c_int, 0x90);
pub const CARD_CMD_ACTIVATE_BF = @as(c_int, 0x3C);
pub const CARD_CMD_ACTIVATE_SEC = @as(c_int, 0x40);
pub const CARD_CMD_SECURE_CHIPID = @as(c_int, 0x10);
pub const CARD_CMD_SECURE_READ = @as(c_int, 0x20);
pub const CARD_CMD_DISABLE_SEC = @as(c_int, 0x60);
pub const CARD_CMD_DATA_MODE = @as(c_int, 0xA0);
pub const CARD_CMD_DATA_READ = @as(c_int, 0xB7);
pub const CARD_CMD_DATA_CHIPID = @as(c_int, 0xB8);
pub const CARD_ENABLE = @as(c_int, 1) << @as(c_int, 15);
pub const CARD_SPI_ENABLE = @as(c_int, 1) << @as(c_int, 13);
pub const CARD_SPI_BUSY = @as(c_int, 1) << @as(c_int, 7);
pub const CARD_SPI_HOLD = @as(c_int, 1) << @as(c_int, 6);
pub const CARD_SPICNTH_ENABLE = @as(c_int, 1) << @as(c_int, 7);
pub const CARD_SPICNTH_IRQ = @as(c_int, 1) << @as(c_int, 6);
pub const NDS_DEBUG_INCLUDE = "";
pub const NDS_DMA_INCLUDE = "";
pub const DMA0_SRC = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000B0, .hex)).*;
pub const DMA0_DEST = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000B4, .hex)).*;
pub const DMA0_CR = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000B8, .hex)).*;
pub const DMA1_SRC = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000BC, .hex)).*;
pub const DMA1_DEST = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000C0, .hex)).*;
pub const DMA1_CR = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000C4, .hex)).*;
pub const DMA2_SRC = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000C8, .hex)).*;
pub const DMA2_DEST = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000CC, .hex)).*;
pub const DMA2_CR = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000D0, .hex)).*;
pub const DMA3_SRC = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000D4, .hex)).*;
pub const DMA3_DEST = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000D8, .hex)).*;
pub const DMA3_CR = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000DC, .hex)).*;
pub inline fn DMA_SRC(n: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000B0, .hex) + (n * @as(c_int, 12))).*) {
    _ = &n;
    return @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000B0, .hex) + (n * @as(c_int, 12))).*;
}
pub inline fn DMA_DEST(n: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000B4, .hex) + (n * @as(c_int, 12))).*) {
    _ = &n;
    return @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000B4, .hex) + (n * @as(c_int, 12))).*;
}
pub inline fn DMA_CR(n: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000B8, .hex) + (n * @as(c_int, 12))).*) {
    _ = &n;
    return @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000B8, .hex) + (n * @as(c_int, 12))).*;
}
pub inline fn DMA_FILL(n: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000E0, .hex) + (n * @as(c_int, 4))).*) {
    _ = &n;
    return @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040000E0, .hex) + (n * @as(c_int, 4))).*;
}
pub const DMA_ENABLE = BIT(@as(c_int, 31));
pub const DMA_BUSY = BIT(@as(c_int, 31));
pub const DMA_IRQ_REQ = BIT(@as(c_int, 30));
pub const DMA_START_NOW = @as(c_int, 0);
pub const DMA_START_CARD = @as(c_int, 5) << @as(c_int, 27);
pub const DMA_START_HBL = BIT(@as(c_int, 28));
pub const DMA_START_VBL = BIT(@as(c_int, 27));
pub const DMA_START_FIFO = @as(c_int, 7) << @as(c_int, 27);
pub const DMA_DISP_FIFO = @as(c_int, 4) << @as(c_int, 27);
pub const DMA_16_BIT = @as(c_int, 0);
pub const DMA_32_BIT = BIT(@as(c_int, 26));
pub const DMA_REPEAT = BIT(@as(c_int, 25));
pub const DMA_SRC_INC = @as(c_int, 0);
pub const DMA_SRC_DEC = BIT(@as(c_int, 23));
pub const DMA_SRC_FIX = BIT(@as(c_int, 24));
pub const DMA_DST_INC = @as(c_int, 0);
pub const DMA_DST_DEC = BIT(@as(c_int, 21));
pub const DMA_DST_FIX = BIT(@as(c_int, 22));
pub const DMA_DST_RESET = @as(c_int, 3) << @as(c_int, 21);
pub const DMA_COPY_WORDS = (DMA_ENABLE | DMA_32_BIT) | DMA_START_NOW;
pub const DMA_COPY_HALFWORDS = (DMA_ENABLE | DMA_16_BIT) | DMA_START_NOW;
pub const DMA_FIFO = ((DMA_ENABLE | DMA_32_BIT) | DMA_DST_FIX) | DMA_START_FIFO;
pub const NDS_INTERRUPTS_INCLUDE = "";
pub inline fn IRQ_TIMER(n: anytype) @TypeOf(@as(c_int, 1) << (n + @as(c_int, 3))) {
    _ = &n;
    return @as(c_int, 1) << (n + @as(c_int, 3));
}
pub const MAX_INTERRUPTS = @as(c_int, 25);
pub const REG_IE = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000210, .hex)).*;
pub const REG_AUXIE = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000218, .hex)).*;
pub const REG_IF = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000214, .hex)).*;
pub const REG_AUXIF = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400021C, .hex)).*;
pub const REG_IME = @import("std").zig.c_translation.cast([*c]vuint32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000208, .hex)).*;
pub const INTR_WAIT_FLAGS = __irq_flags.*;
pub const INTR_WAIT_FLAGSAUX = __irq_flagsaux.*;
pub const IRQ_HANDLER = __irq_vector.*;
pub const NDS_IPC_INCLUDE = "";
pub const REG_IPC_SYNC = @import("std").zig.c_translation.cast([*c]vuint16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000180, .hex)).*;
pub const REG_IPC_FIFO_TX = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000188, .hex)).*;
pub const REG_IPC_FIFO_RX = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4100000, .hex)).*;
pub const REG_IPC_FIFO_CR = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000184, .hex)).*;
pub const NDS_MEMORY_INCLUDE = "";
pub const _ANSIDECL_H_ = "";
pub const __NEWLIB_H__ = @as(c_int, 1);
pub const _ATEXIT_DYNAMIC_ALLOC = @as(c_int, 1);
pub const _FSEEK_OPTIMIZATION = @as(c_int, 1);
pub const _FVWRITE_IN_STREAMIO = @as(c_int, 1);
pub const _HAVE_CC_INHIBIT_LOOP_TO_LIBCALL = @as(c_int, 1);
pub const _HAVE_INITFINI_ARRAY = @as(c_int, 1);
pub const _HAVE_LONG_DOUBLE = @as(c_int, 1);
pub const _LDBL_EQ_DBL = @as(c_int, 1);
pub const _MB_CAPABLE = @as(c_int, 1);
pub const _MB_LEN_MAX = @as(c_int, 8);
pub const _REENT_CHECK_VERIFY = @as(c_int, 1);
pub const _UNBUF_STREAM_OPT = @as(c_int, 1);
pub const _WANT_IO_C99_FORMATS = @as(c_int, 1);
pub const _WANT_IO_LONG_LONG = @as(c_int, 1);
pub const _WANT_IO_POS_ARGS = @as(c_int, 1);
pub const _WANT_USE_GDTOA = @as(c_int, 1);
pub const __SYS_CONFIG_H__ = "";
pub const __IEEE_LITTLE_ENDIAN = "";
pub const _SUPPORTS_ERREXCEPT = "";
pub const __OBSOLETE_MATH_DEFAULT = @as(c_int, 1);
pub const __OBSOLETE_MATH = __OBSOLETE_MATH_DEFAULT;
pub const _POINTER_INT = c_long;
pub const __RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex);
pub const __EXPORT = "";
pub const __IMPORT = "";
pub const _READ_WRITE_RETURN_TYPE = c_int;
pub const _READ_WRITE_BUFSIZE_TYPE = c_int;
pub const _USE_GDTOA = "";
pub const _BEGIN_STD_C = "";
pub const _END_STD_C = "";
pub const _NOTHROW = "";
pub const REG_EXMEMCNT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000204, .hex)).*;
pub const ARM7_MAIN_RAM_PRIORITY = BIT(@as(c_int, 15));
pub const ARM7_OWNS_CARD = BIT(@as(c_int, 11));
pub const ARM7_OWNS_ROM = BIT(@as(c_int, 7));
pub const REG_MBK1 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04004040, .hex));
pub const REG_MBK2 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04004044, .hex));
pub const REG_MBK3 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04004048, .hex));
pub const REG_MBK4 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400404C, .hex));
pub const REG_MBK5 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04004050, .hex));
pub const REG_MBK6 = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04004054, .hex)).*;
pub const REG_MBK7 = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04004058, .hex)).*;
pub const REG_MBK8 = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400405C, .hex)).*;
pub const REG_MBK9 = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04004060, .hex)).*;
pub const ALLRAM = @import("std").zig.c_translation.cast([*c]@"u8", @as(c_int, 0x00000000));
pub const MAINRAM8 = @import("std").zig.c_translation.cast([*c]@"u8", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02000000, .hex));
pub const MAINRAM16 = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02000000, .hex));
pub const MAINRAM32 = @import("std").zig.c_translation.cast([*c]@"u32", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02000000, .hex));
pub const GBA_BUS = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x08000000, .hex));
pub const GBAROM = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x08000000, .hex));
pub const SRAM = @import("std").zig.c_translation.cast([*c]@"u8", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0A000000, .hex));
pub const GBA_HEADER = @import("std").zig.c_translation.cast([*c]tGBAHeader, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x08000000, .hex)).*;
pub const __NDSHeader = @import("std").zig.c_translation.cast([*c]tNDSHeader, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02FFFE00, .hex));
pub const __DSiHeader = @import("std").zig.c_translation.cast([*c]tDSiHeader, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02FFE000, .hex));
pub const BUS_OWNER_ARM9 = @"true";
pub const BUS_OWNER_ARM7 = @"false";
pub const NDS_SYSTEM_INCLUDE = "";
pub const REG_DISPSTAT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000004, .hex)).*;
pub const REG_VCOUNT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000006, .hex)).*;
pub const HALT_CR = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000300, .hex)).*;
pub const REG_POWERCNT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000304, .hex)).*;
pub const REG_SCFG_ROM = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4004000, .hex)).*;
pub const REG_SCFG_CLK = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4004004, .hex)).*;
pub const REG_SCFG_RST = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4004006, .hex)).*;
pub const REG_SCFG_EXT = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4004008, .hex)).*;
pub const REG_SCFG_MC = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4004010, .hex)).*;
pub const PM_ARM9_DIRECT = BIT(@as(c_int, 16));
pub const PersonalData = @import("std").zig.c_translation.cast([*c]PERSONAL_DATA, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x2FFFC80, .hex));
pub const ARGV_MAGIC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x5f617267, .hex);
pub const __system_argv = @import("std").zig.c_translation.cast([*c]struct___argv, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02FFFE70, .hex));
pub const BOOTSIG = @as(c_ulonglong, 0x62757473746F6F62);
pub const NDS_TIMERS_INCLUDE = "";
pub inline fn TIMER_CR(n: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000102, .hex) + (n << @as(c_int, 2))).*) {
    _ = &n;
    return @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000102, .hex) + (n << @as(c_int, 2))).*;
}
pub const TIMER0_CR = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000102, .hex)).*;
pub const TIMER1_CR = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000106, .hex)).*;
pub const TIMER2_CR = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400010A, .hex)).*;
pub const TIMER3_CR = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400010E, .hex)).*;
pub inline fn TIMER_DATA(n: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000100, .hex) + (n << @as(c_int, 2))).*) {
    _ = &n;
    return @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000100, .hex) + (n << @as(c_int, 2))).*;
}
pub const TIMER0_DATA = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000100, .hex)).*;
pub const TIMER1_DATA = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000104, .hex)).*;
pub const TIMER2_DATA = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000108, .hex)).*;
pub const TIMER3_DATA = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400010C, .hex)).*;
pub const BUS_CLOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 33513982, .decimal);
pub const TIMER_ENABLE = @as(c_int, 1) << @as(c_int, 7);
pub const TIMER_IRQ_REQ = @as(c_int, 1) << @as(c_int, 6);
pub const TIMER_CASCADE = @as(c_int, 1) << @as(c_int, 2);
pub const TIMER_DIV_1 = @as(c_int, 0);
pub const TIMER_DIV_64 = @as(c_int, 1);
pub const TIMER_DIV_256 = @as(c_int, 2);
pub const TIMER_DIV_1024 = @as(c_int, 3);
pub inline fn TIMER_FREQ(n: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(-BUS_CLOCK, n)) {
    _ = &n;
    return @import("std").zig.c_translation.MacroArithmetic.div(-BUS_CLOCK, n);
}
pub inline fn TIMER_FREQ_64(n: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(-(BUS_CLOCK >> @as(c_int, 6)), n)) {
    _ = &n;
    return @import("std").zig.c_translation.MacroArithmetic.div(-(BUS_CLOCK >> @as(c_int, 6)), n);
}
pub inline fn TIMER_FREQ_256(n: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(-(BUS_CLOCK >> @as(c_int, 8)), n)) {
    _ = &n;
    return @import("std").zig.c_translation.MacroArithmetic.div(-(BUS_CLOCK >> @as(c_int, 8)), n);
}
pub inline fn TIMER_FREQ_1024(n: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(-(BUS_CLOCK >> @as(c_int, 10)), n)) {
    _ = &n;
    return @import("std").zig.c_translation.MacroArithmetic.div(-(BUS_CLOCK >> @as(c_int, 10)), n);
}
pub const FIFOCOMMON_H = "";
pub const __TOUCH_H__ = "";
pub const _INPUT_H_ = "";
pub const REG_KEYINPUT = @import("std").zig.c_translation.cast([*c]vuint16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000130, .hex)).*;
pub const REG_KEYCNT = @import("std").zig.c_translation.cast([*c]vuint16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000132, .hex)).*;
pub const SHA1_H_INCLUDE = "";
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_STDDEF_H_misc = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const __DYNAMICARRAY_H__ = "";
pub const _STDLIB_H_ = "";
pub const _SYS_REENT_H_ = "";
pub const _SYS_CDEFS_H_ = "";
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __THROW = "";
pub const __ptr_t = ?*anyopaque;
pub const __attribute_malloc__ = "";
pub const __attribute_pure__ = "";
pub const __bounded = "";
pub const __unbounded = "";
pub const __ptrvalue = "";
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub const __GNUCLIKE_ASM = @as(c_int, 3);
pub const __GNUCLIKE_MATH_BUILTIN_CONSTANTS = "";
pub const __GNUCLIKE___TYPEOF = @as(c_int, 1);
pub const __GNUCLIKE___SECTION = @as(c_int, 1);
pub const __GNUCLIKE_CTOR_SECTION_HANDLING = @as(c_int, 1);
pub const __GNUCLIKE_BUILTIN_CONSTANT_P = @as(c_int, 1);
pub const __GNUCLIKE_BUILTIN_VARARGS = @as(c_int, 1);
pub const __GNUCLIKE_BUILTIN_STDARG = @as(c_int, 1);
pub const __GNUCLIKE_BUILTIN_VAALIST = @as(c_int, 1);
pub const __GNUC_VA_LIST_COMPATIBILITY = @as(c_int, 1);
pub const __GNUCLIKE_BUILTIN_NEXT_ARG = @as(c_int, 1);
pub const __GNUCLIKE_MATH_BUILTIN_RELOPS = "";
pub const __GNUCLIKE_BUILTIN_MEMCPY = @as(c_int, 1);
pub const __CC_SUPPORTS_INLINE = @as(c_int, 1);
pub const __CC_SUPPORTS___INLINE = @as(c_int, 1);
pub const __CC_SUPPORTS___INLINE__ = @as(c_int, 1);
pub const __CC_SUPPORTS___FUNC__ = @as(c_int, 1);
pub const __CC_SUPPORTS_WARNING = @as(c_int, 1);
pub const __CC_SUPPORTS_VARADIC_XXX = @as(c_int, 1);
pub const __CC_SUPPORTS_DYNAMIC_ARRAY_INIT = @as(c_int, 1);
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    _ = &protos;
    return protos;
}
pub inline fn __CONCAT(x: anytype, y: anytype) @TypeOf(__CONCAT1(x, y)) {
    _ = &x;
    _ = &y;
    return __CONCAT1(x, y);
}
pub inline fn __XSTRING(x: anytype) @TypeOf(__STRING(x)) {
    _ = &x;
    return __STRING(x);
}
pub const __signed = c_int;
pub inline fn __unreachable() @TypeOf(__builtin_unreachable()) {
    return __builtin_unreachable();
}
pub inline fn __predict_true(exp: anytype) @TypeOf(__builtin_expect(exp, @as(c_int, 1))) {
    _ = &exp;
    return __builtin_expect(exp, @as(c_int, 1));
}
pub inline fn __predict_false(exp: anytype) @TypeOf(__builtin_expect(exp, @as(c_int, 0))) {
    _ = &exp;
    return __builtin_expect(exp, @as(c_int, 0));
}
pub inline fn __offsetof(@"type": anytype, field: anytype) @TypeOf(offsetof(@"type", field)) {
    _ = &@"type";
    _ = &field;
    return offsetof(@"type", field);
}
pub inline fn __rangeof(@"type": anytype, start: anytype, end: anytype) @TypeOf(__offsetof(@"type", end) - __offsetof(@"type", start)) {
    _ = &@"type";
    _ = &start;
    _ = &end;
    return __offsetof(@"type", end) - __offsetof(@"type", start);
}
pub const _SYS__TYPES_H = "";
pub const __need_wint_t = "";
pub const _WINT_T = "";
pub const _MACHINE__TYPES_H = "";
pub const __machine_off_t_defined = "";
pub const __machine_fpos_t_defined = "";
pub const __machine_ino_t_defined = "";
pub const __machine_dev_t_defined = "";
pub const _CLOCK_T_ = c_ulong;
pub const _TIME_T_ = c_long;
pub const _CLOCKID_T_ = c_ulong;
pub const _TIMER_T_ = c_ulong;
pub const _NULL = @as(c_int, 0);
pub const __Long = c_int;
pub const __SYS_LOCK_H__ = "";
pub const __LOCK_INITIALIZER = @import("std").zig.c_translation.cast(_LOCK_T, @as(c_int, 0));
pub const __LOCK_INITIALIZER_RECURSIVE = @import("std").mem.zeroInit(_LOCK_RECURSIVE_T, .{ __LOCK_INITIALIZER, @as(c_int, 0), @as(c_int, 0) });
pub const __COND_INITIALIZER = @import("std").zig.c_translation.cast(_COND_T, @as(c_int, 0));
pub inline fn __lock_init(NAME: anytype) @TypeOf(__libc_lock_init(&NAME)) {
    _ = &NAME;
    return __libc_lock_init(&NAME);
}
pub inline fn __lock_init_recursive(NAME: anytype) @TypeOf(__libc_lock_init_recursive(&NAME)) {
    _ = &NAME;
    return __libc_lock_init_recursive(&NAME);
}
pub inline fn __lock_close(NAME: anytype) @TypeOf(__libc_lock_close(&NAME)) {
    _ = &NAME;
    return __libc_lock_close(&NAME);
}
pub inline fn __lock_close_recursive(NAME: anytype) @TypeOf(__libc_lock_close_recursive(&NAME)) {
    _ = &NAME;
    return __libc_lock_close_recursive(&NAME);
}
pub inline fn __lock_acquire(NAME: anytype) @TypeOf(__libc_lock_acquire(&NAME)) {
    _ = &NAME;
    return __libc_lock_acquire(&NAME);
}
pub inline fn __lock_acquire_recursive(NAME: anytype) @TypeOf(__libc_lock_acquire_recursive(&NAME)) {
    _ = &NAME;
    return __libc_lock_acquire_recursive(&NAME);
}
pub inline fn __lock_try_acquire(NAME: anytype) @TypeOf(__libc_lock_try_acquire(&NAME)) {
    _ = &NAME;
    return __libc_lock_try_acquire(&NAME);
}
pub inline fn __lock_try_acquire_recursive(NAME: anytype) @TypeOf(__libc_lock_try_acquire_recursive(&NAME)) {
    _ = &NAME;
    return __libc_lock_try_acquire_recursive(&NAME);
}
pub inline fn __lock_release(NAME: anytype) @TypeOf(__libc_lock_release(&NAME)) {
    _ = &NAME;
    return __libc_lock_release(&NAME);
}
pub inline fn __lock_release_recursive(NAME: anytype) @TypeOf(__libc_lock_release_recursive(&NAME)) {
    _ = &NAME;
    return __libc_lock_release_recursive(&NAME);
}
pub inline fn __cond_init(NAME: anytype) @TypeOf(__libc_cond_init(&NAME)) {
    _ = &NAME;
    return __libc_cond_init(&NAME);
}
pub inline fn __cond_signal(NAME: anytype) @TypeOf(__libc_cond_signal(&NAME)) {
    _ = &NAME;
    return __libc_cond_signal(&NAME);
}
pub inline fn __cond_broadcast(NAME: anytype) @TypeOf(__libc_cond_broadcast(&NAME)) {
    _ = &NAME;
    return __libc_cond_broadcast(&NAME);
}
pub inline fn __cond_wait(NAME: anytype, LOCK: anytype, TIMEOUT: anytype) @TypeOf(__libc_cond_wait(&NAME, &LOCK, TIMEOUT)) {
    _ = &NAME;
    _ = &LOCK;
    _ = &TIMEOUT;
    return __libc_cond_wait(&NAME, &LOCK, TIMEOUT);
}
pub inline fn __cond_wait_recursive(NAME: anytype, LOCK: anytype, TIMEOUT: anytype) @TypeOf(__libc_cond_wait_recursive(&NAME, &LOCK, TIMEOUT)) {
    _ = &NAME;
    _ = &LOCK;
    _ = &TIMEOUT;
    return __libc_cond_wait_recursive(&NAME, &LOCK, TIMEOUT);
}
pub const _ATEXIT_SIZE = @as(c_int, 32);
pub const _RAND48_SEED_0 = @as(c_int, 0x330e);
pub const _RAND48_SEED_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xabcd, .hex);
pub const _RAND48_SEED_2 = @as(c_int, 0x1234);
pub const _RAND48_MULT_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xe66d, .hex);
pub const _RAND48_MULT_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xdeec, .hex);
pub const _RAND48_MULT_2 = @as(c_int, 0x0005);
pub const _RAND48_ADD = @as(c_int, 0x000b);
pub const _REENT_EMERGENCY_SIZE = @as(c_int, 25);
pub const _REENT_ASCTIME_SIZE = @as(c_int, 26);
pub const _REENT_SIGNAL_SIZE = @as(c_int, 24);
pub const _REENT_INIT_RESERVED_0 = "";
pub const _REENT_INIT_RESERVED_1 = "";
pub const _REENT_INIT_RESERVED_2 = "";
pub const _REENT_INIT_RESERVED_6_7 = "";
pub const _REENT_INIT_RESERVED_8 = "";
pub inline fn _REENT_SIGNGAM(ptr: anytype) @TypeOf(ptr.*._new._reent._gamma_signgam) {
    _ = &ptr;
    return ptr.*._new._reent._gamma_signgam;
}
pub inline fn _REENT_RAND_NEXT(ptr: anytype) @TypeOf(ptr.*._new._reent._rand_next) {
    _ = &ptr;
    return ptr.*._new._reent._rand_next;
}
pub inline fn _REENT_RAND48_SEED(ptr: anytype) @TypeOf(ptr.*._new._reent._r48._seed) {
    _ = &ptr;
    return ptr.*._new._reent._r48._seed;
}
pub inline fn _REENT_RAND48_MULT(ptr: anytype) @TypeOf(ptr.*._new._reent._r48._mult) {
    _ = &ptr;
    return ptr.*._new._reent._r48._mult;
}
pub inline fn _REENT_RAND48_ADD(ptr: anytype) @TypeOf(ptr.*._new._reent._r48._add) {
    _ = &ptr;
    return ptr.*._new._reent._r48._add;
}
pub inline fn _REENT_MP_RESULT(ptr: anytype) @TypeOf(ptr.*._result) {
    _ = &ptr;
    return ptr.*._result;
}
pub inline fn _REENT_MP_RESULT_K(ptr: anytype) @TypeOf(ptr.*._result_k) {
    _ = &ptr;
    return ptr.*._result_k;
}
pub inline fn _REENT_MP_P5S(ptr: anytype) @TypeOf(ptr.*._p5s) {
    _ = &ptr;
    return ptr.*._p5s;
}
pub inline fn _REENT_MP_FREELIST(ptr: anytype) @TypeOf(ptr.*._freelist) {
    _ = &ptr;
    return ptr.*._freelist;
}
pub inline fn _REENT_ASCTIME_BUF(ptr: anytype) @TypeOf(ptr.*._new._reent._asctime_buf) {
    _ = &ptr;
    return ptr.*._new._reent._asctime_buf;
}
pub inline fn _REENT_TM(ptr: anytype) @TypeOf(&ptr.*._new._reent._localtime_buf) {
    _ = &ptr;
    return &ptr.*._new._reent._localtime_buf;
}
pub inline fn _REENT_STRTOK_LAST(ptr: anytype) @TypeOf(ptr.*._new._reent._strtok_last) {
    _ = &ptr;
    return ptr.*._new._reent._strtok_last;
}
pub inline fn _REENT_MBLEN_STATE(ptr: anytype) @TypeOf(ptr.*._new._reent._mblen_state) {
    _ = &ptr;
    return ptr.*._new._reent._mblen_state;
}
pub inline fn _REENT_MBTOWC_STATE(ptr: anytype) @TypeOf(ptr.*._new._reent._mbtowc_state) {
    _ = &ptr;
    return ptr.*._new._reent._mbtowc_state;
}
pub inline fn _REENT_WCTOMB_STATE(ptr: anytype) @TypeOf(ptr.*._new._reent._wctomb_state) {
    _ = &ptr;
    return ptr.*._new._reent._wctomb_state;
}
pub inline fn _REENT_MBRLEN_STATE(ptr: anytype) @TypeOf(ptr.*._new._reent._mbrlen_state) {
    _ = &ptr;
    return ptr.*._new._reent._mbrlen_state;
}
pub inline fn _REENT_MBRTOWC_STATE(ptr: anytype) @TypeOf(ptr.*._new._reent._mbrtowc_state) {
    _ = &ptr;
    return ptr.*._new._reent._mbrtowc_state;
}
pub inline fn _REENT_MBSRTOWCS_STATE(ptr: anytype) @TypeOf(ptr.*._new._reent._mbsrtowcs_state) {
    _ = &ptr;
    return ptr.*._new._reent._mbsrtowcs_state;
}
pub inline fn _REENT_WCRTOMB_STATE(ptr: anytype) @TypeOf(ptr.*._new._reent._wcrtomb_state) {
    _ = &ptr;
    return ptr.*._new._reent._wcrtomb_state;
}
pub inline fn _REENT_WCSRTOMBS_STATE(ptr: anytype) @TypeOf(ptr.*._new._reent._wcsrtombs_state) {
    _ = &ptr;
    return ptr.*._new._reent._wcsrtombs_state;
}
pub inline fn _REENT_L64A_BUF(ptr: anytype) @TypeOf(ptr.*._new._reent._l64a_buf) {
    _ = &ptr;
    return ptr.*._new._reent._l64a_buf;
}
pub inline fn _REENT_SIGNAL_BUF(ptr: anytype) @TypeOf(ptr.*._new._reent._signal_buf) {
    _ = &ptr;
    return ptr.*._new._reent._signal_buf;
}
pub inline fn _REENT_GETDATE_ERR_P(ptr: anytype) @TypeOf(&ptr.*._new._reent._getdate_err) {
    _ = &ptr;
    return &ptr.*._new._reent._getdate_err;
}
pub inline fn _REENT_CLEANUP(_ptr: anytype) @TypeOf(_ptr.*.__cleanup) {
    _ = &_ptr;
    return _ptr.*.__cleanup;
}
pub inline fn _REENT_CVTBUF(_ptr: anytype) @TypeOf(_ptr.*._cvtbuf) {
    _ = &_ptr;
    return _ptr.*._cvtbuf;
}
pub inline fn _REENT_CVTLEN(_ptr: anytype) @TypeOf(_ptr.*._cvtlen) {
    _ = &_ptr;
    return _ptr.*._cvtlen;
}
pub inline fn _REENT_EMERGENCY(_ptr: anytype) @TypeOf(_ptr.*._emergency) {
    _ = &_ptr;
    return _ptr.*._emergency;
}
pub inline fn _REENT_ERRNO(_ptr: anytype) @TypeOf(_ptr.*._errno) {
    _ = &_ptr;
    return _ptr.*._errno;
}
pub inline fn _REENT_INC(_ptr: anytype) @TypeOf(_ptr.*._inc) {
    _ = &_ptr;
    return _ptr.*._inc;
}
pub inline fn _REENT_LOCALE(_ptr: anytype) @TypeOf(_ptr.*._locale) {
    _ = &_ptr;
    return _ptr.*._locale;
}
pub inline fn _REENT_SIG_FUNC(_ptr: anytype) @TypeOf(_ptr.*._sig_func) {
    _ = &_ptr;
    return _ptr.*._sig_func;
}
pub inline fn _REENT_STDIN(_ptr: anytype) @TypeOf(_ptr.*._stdin) {
    _ = &_ptr;
    return _ptr.*._stdin;
}
pub inline fn _REENT_STDOUT(_ptr: anytype) @TypeOf(_ptr.*._stdout) {
    _ = &_ptr;
    return _ptr.*._stdout;
}
pub inline fn _REENT_STDERR(_ptr: anytype) @TypeOf(_ptr.*._stderr) {
    _ = &_ptr;
    return _ptr.*._stderr;
}
pub const __ATTRIBUTE_IMPURE_PTR__ = "";
pub const __ATTRIBUTE_IMPURE_DATA__ = "";
pub const _REENT = _impure_ptr;
pub inline fn _REENT_IS_NULL(_ptr: anytype) @TypeOf(_ptr == NULL) {
    _ = &_ptr;
    return _ptr == NULL;
}
pub const _GLOBAL_REENT = &_impure_data;
pub const _Kmax = @import("std").zig.c_translation.sizeof(usize) << @as(c_int, 3);
pub const _MACHSTDLIB_H_ = "";
pub const _NEWLIB_ALLOCA_H = "";
pub const __compar_fn_t_defined = "";
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const RAND_MAX = __RAND_MAX;
pub const MB_CUR_MAX = __locale_mb_cur_max();
pub const strtodf = strtof;
pub const _STRING_H_ = "";
pub const _SYS__LOCALE_H = "";
pub const _STRINGS_H_ = "";
pub const _SIZE_T_DECLARED = "";
pub const __LINKEDLIST_H__ = "";
pub const _INCLUDE_MALLOC_H_ = "";
pub const _MACHMALLOC_H_ = "";
pub const M_MXFAST = @as(c_int, 1);
pub const M_NLBLKS = @as(c_int, 2);
pub const M_GRAIN = @as(c_int, 3);
pub const M_KEEP = @as(c_int, 4);
pub const M_TRIM_THRESHOLD = -@as(c_int, 1);
pub const M_TOP_PAD = -@as(c_int, 2);
pub const M_MMAP_THRESHOLD = -@as(c_int, 3);
pub const M_MMAP_MAX = -@as(c_int, 4);
pub const _libnds_background_h_ = "";
pub const VIDEO_ARM9_INCLUDE = "";
pub const _sassert_h_ = "";
pub const BG_PALETTE = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x05000000, .hex));
pub const BG_PALETTE_SUB = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x05000400, .hex));
pub const SPRITE_PALETTE = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x05000200, .hex));
pub const SPRITE_PALETTE_SUB = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x05000600, .hex));
pub const BG_GFX = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6000000, .hex));
pub const BG_GFX_SUB = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6200000, .hex));
pub const SPRITE_GFX = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6400000, .hex));
pub const SPRITE_GFX_SUB = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6600000, .hex));
pub const VRAM_0 = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6000000, .hex));
pub const VRAM = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6800000, .hex));
pub const VRAM_A = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6800000, .hex));
pub const VRAM_B = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6820000, .hex));
pub const VRAM_C = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6840000, .hex));
pub const VRAM_D = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6860000, .hex));
pub const VRAM_E = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6880000, .hex));
pub const VRAM_F = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6890000, .hex));
pub const VRAM_G = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6894000, .hex));
pub const VRAM_H = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x6898000, .hex));
pub const VRAM_I = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x68A0000, .hex));
pub const OAM = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x07000000, .hex));
pub const OAM_SUB = @import("std").zig.c_translation.cast([*c]@"u16", @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x07000400, .hex));
pub inline fn RGB15(r: anytype, g: anytype, b: anytype) @TypeOf((r | (g << @as(c_int, 5))) | (b << @as(c_int, 10))) {
    _ = &r;
    _ = &g;
    _ = &b;
    return (r | (g << @as(c_int, 5))) | (b << @as(c_int, 10));
}
pub inline fn RGB5(r: anytype, g: anytype, b: anytype) @TypeOf((r | (g << @as(c_int, 5))) | (b << @as(c_int, 10))) {
    _ = &r;
    _ = &g;
    _ = &b;
    return (r | (g << @as(c_int, 5))) | (b << @as(c_int, 10));
}
pub inline fn RGB8(r: anytype, g: anytype, b: anytype) @TypeOf(((r >> @as(c_int, 3)) | ((g >> @as(c_int, 3)) << @as(c_int, 5))) | ((b >> @as(c_int, 3)) << @as(c_int, 10))) {
    _ = &r;
    _ = &g;
    _ = &b;
    return ((r >> @as(c_int, 3)) | ((g >> @as(c_int, 3)) << @as(c_int, 5))) | ((b >> @as(c_int, 3)) << @as(c_int, 10));
}
pub inline fn ARGB16(a: anytype, r: anytype, g: anytype, b: anytype) @TypeOf((((a << @as(c_int, 15)) | r) | (g << @as(c_int, 5))) | (b << @as(c_int, 10))) {
    _ = &a;
    _ = &r;
    _ = &g;
    _ = &b;
    return (((a << @as(c_int, 15)) | r) | (g << @as(c_int, 5))) | (b << @as(c_int, 10));
}
pub const SCREEN_HEIGHT = @as(c_int, 192);
pub const SCREEN_WIDTH = @as(c_int, 256);
pub const VRAM_CR = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000240, .hex)).*;
pub const VRAM_A_CR = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000240, .hex)).*;
pub const VRAM_B_CR = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000241, .hex)).*;
pub const VRAM_C_CR = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000242, .hex)).*;
pub const VRAM_D_CR = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000243, .hex)).*;
pub const VRAM_EFG_CR = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000244, .hex)).*;
pub const VRAM_E_CR = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000244, .hex)).*;
pub const VRAM_F_CR = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000245, .hex)).*;
pub const VRAM_G_CR = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000246, .hex)).*;
pub const WRAM_CR = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000247, .hex)).*;
pub const VRAM_H_CR = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000248, .hex)).*;
pub const VRAM_I_CR = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000249, .hex)).*;
pub const VRAM_ENABLE = @as(c_int, 1) << @as(c_int, 7);
pub inline fn VRAM_OFFSET(n: anytype) @TypeOf(n << @as(c_int, 3)) {
    _ = &n;
    return n << @as(c_int, 3);
}
pub const VRAM_E_EXT_PALETTE = @import("std").zig.c_translation.cast([*c]_ext_palette, VRAM_E);
pub const VRAM_F_EXT_PALETTE = @import("std").zig.c_translation.cast([*c]_ext_palette, VRAM_F);
pub const VRAM_G_EXT_PALETTE = @import("std").zig.c_translation.cast([*c]_ext_palette, VRAM_G);
pub const VRAM_H_EXT_PALETTE = @import("std").zig.c_translation.cast([*c]_ext_palette, VRAM_H);
pub const VRAM_F_EXT_SPR_PALETTE = @import("std").zig.c_translation.cast([*c]_palette, VRAM_F);
pub const VRAM_G_EXT_SPR_PALETTE = @import("std").zig.c_translation.cast([*c]_palette, VRAM_G);
pub const VRAM_I_EXT_SPR_PALETTE = @import("std").zig.c_translation.cast([*c]_palette, VRAM_I);
pub const REG_DISPCNT = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000000, .hex)).*;
pub const REG_DISPCNT_SUB = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001000, .hex)).*;
pub const ENABLE_3D = @as(c_int, 1) << @as(c_int, 3);
pub const DISPLAY_ENABLE_SHIFT = @as(c_int, 8);
pub const DISPLAY_BG0_ACTIVE = @as(c_int, 1) << @as(c_int, 8);
pub const DISPLAY_BG1_ACTIVE = @as(c_int, 1) << @as(c_int, 9);
pub const DISPLAY_BG2_ACTIVE = @as(c_int, 1) << @as(c_int, 10);
pub const DISPLAY_BG3_ACTIVE = @as(c_int, 1) << @as(c_int, 11);
pub const DISPLAY_SPR_ACTIVE = @as(c_int, 1) << @as(c_int, 12);
pub const DISPLAY_WIN0_ON = @as(c_int, 1) << @as(c_int, 13);
pub const DISPLAY_WIN1_ON = @as(c_int, 1) << @as(c_int, 14);
pub const DISPLAY_SPR_WIN_ON = @as(c_int, 1) << @as(c_int, 15);
pub const DISPLAY_SPR_HBLANK = @as(c_int, 1) << @as(c_int, 23);
pub const DISPLAY_SPR_1D_LAYOUT = @as(c_int, 1) << @as(c_int, 4);
pub const DISPLAY_SPR_1D = @as(c_int, 1) << @as(c_int, 4);
pub const DISPLAY_SPR_2D = @as(c_int, 0) << @as(c_int, 4);
pub const DISPLAY_SPR_1D_BMP = @as(c_int, 4) << @as(c_int, 4);
pub const DISPLAY_SPR_2D_BMP_128 = @as(c_int, 0) << @as(c_int, 4);
pub const DISPLAY_SPR_2D_BMP_256 = @as(c_int, 2) << @as(c_int, 4);
pub const DISPLAY_SPR_1D_SIZE_32 = @as(c_int, 0) << @as(c_int, 20);
pub const DISPLAY_SPR_1D_SIZE_64 = @as(c_int, 1) << @as(c_int, 20);
pub const DISPLAY_SPR_1D_SIZE_128 = @as(c_int, 2) << @as(c_int, 20);
pub const DISPLAY_SPR_1D_SIZE_256 = @as(c_int, 3) << @as(c_int, 20);
pub const DISPLAY_SPR_1D_BMP_SIZE_128 = @as(c_int, 0) << @as(c_int, 22);
pub const DISPLAY_SPR_1D_BMP_SIZE_256 = @as(c_int, 1) << @as(c_int, 22);
pub const DISPLAY_SPRITE_ATTR_MASK = ((@as(c_int, 7) << @as(c_int, 4)) | (@as(c_int, 7) << @as(c_int, 20))) | (@as(c_int, 1) << @as(c_int, 31));
pub const DISPLAY_SPR_EXT_PALETTE = @as(c_int, 1) << @as(c_int, 31);
pub const DISPLAY_BG_EXT_PALETTE = @as(c_int, 1) << @as(c_int, 30);
pub const DISPLAY_SCREEN_OFF = @as(c_int, 1) << @as(c_int, 7);
pub inline fn DISPLAY_CHAR_BASE(n: anytype) @TypeOf((n & @as(c_int, 7)) << @as(c_int, 24)) {
    _ = &n;
    return (n & @as(c_int, 7)) << @as(c_int, 24);
}
pub inline fn DISPLAY_SCREEN_BASE(n: anytype) @TypeOf((n & @as(c_int, 7)) << @as(c_int, 27)) {
    _ = &n;
    return (n & @as(c_int, 7)) << @as(c_int, 27);
}
pub const REG_MASTER_BRIGHT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400006C, .hex)).*;
pub const REG_MASTER_BRIGHT_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400106C, .hex)).*;
pub const WIN0_X0 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000041, .hex)).*;
pub const WIN0_X1 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000040, .hex)).*;
pub const WIN0_Y0 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000045, .hex)).*;
pub const WIN0_Y1 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000044, .hex)).*;
pub const WIN1_X0 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000043, .hex)).*;
pub const WIN1_X1 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000042, .hex)).*;
pub const WIN1_Y0 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000047, .hex)).*;
pub const WIN1_Y1 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000046, .hex)).*;
pub const WIN_IN = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000048, .hex)).*;
pub const WIN_OUT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400004A, .hex)).*;
pub const SUB_WIN0_X0 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001041, .hex)).*;
pub const SUB_WIN0_X1 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001040, .hex)).*;
pub const SUB_WIN0_Y0 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001045, .hex)).*;
pub const SUB_WIN0_Y1 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001044, .hex)).*;
pub const SUB_WIN1_X0 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001043, .hex)).*;
pub const SUB_WIN1_X1 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001042, .hex)).*;
pub const SUB_WIN1_Y0 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001047, .hex)).*;
pub const SUB_WIN1_Y1 = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001046, .hex)).*;
pub const SUB_WIN_IN = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001048, .hex)).*;
pub const SUB_WIN_OUT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400104A, .hex)).*;
pub const REG_MOSAIC = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400004C, .hex)).*;
pub const REG_MOSAIC_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400104C, .hex)).*;
pub const REG_BLDCNT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000050, .hex)).*;
pub const REG_BLDY = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000054, .hex)).*;
pub const REG_BLDALPHA = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000052, .hex)).*;
pub const REG_BLDCNT_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001050, .hex)).*;
pub const REG_BLDALPHA_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001052, .hex)).*;
pub const REG_BLDY_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001054, .hex)).*;
pub const BLEND_NONE = @as(c_int, 0) << @as(c_int, 6);
pub const BLEND_ALPHA = @as(c_int, 1) << @as(c_int, 6);
pub const BLEND_FADE_WHITE = @as(c_int, 2) << @as(c_int, 6);
pub const BLEND_FADE_BLACK = @as(c_int, 3) << @as(c_int, 6);
pub const BLEND_SRC_BG0 = @as(c_int, 1) << @as(c_int, 0);
pub const BLEND_SRC_BG1 = @as(c_int, 1) << @as(c_int, 1);
pub const BLEND_SRC_BG2 = @as(c_int, 1) << @as(c_int, 2);
pub const BLEND_SRC_BG3 = @as(c_int, 1) << @as(c_int, 3);
pub const BLEND_SRC_SPRITE = @as(c_int, 1) << @as(c_int, 4);
pub const BLEND_SRC_BACKDROP = @as(c_int, 1) << @as(c_int, 5);
pub const BLEND_DST_BG0 = @as(c_int, 1) << @as(c_int, 8);
pub const BLEND_DST_BG1 = @as(c_int, 1) << @as(c_int, 9);
pub const BLEND_DST_BG2 = @as(c_int, 1) << @as(c_int, 10);
pub const BLEND_DST_BG3 = @as(c_int, 1) << @as(c_int, 11);
pub const BLEND_DST_SPRITE = @as(c_int, 1) << @as(c_int, 12);
pub const BLEND_DST_BACKDROP = @as(c_int, 1) << @as(c_int, 13);
pub const REG_DISPCAPCNT = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000064, .hex)).*;
pub const REG_DISP_MMEM_FIFO = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000068, .hex)).*;
pub const DCAP_ENABLE = BIT(@as(c_int, 31));
pub inline fn DCAP_MODE(n: anytype) @TypeOf((n & @as(c_int, 3)) << @as(c_int, 29)) {
    _ = &n;
    return (n & @as(c_int, 3)) << @as(c_int, 29);
}
pub inline fn DCAP_SRC_ADDR(n: anytype) @TypeOf((n & @as(c_int, 3)) << @as(c_int, 26)) {
    _ = &n;
    return (n & @as(c_int, 3)) << @as(c_int, 26);
}
pub inline fn DCAP_SRC(n: anytype) @TypeOf((n & @as(c_int, 3)) << @as(c_int, 24)) {
    _ = &n;
    return (n & @as(c_int, 3)) << @as(c_int, 24);
}
pub inline fn DCAP_SRC_A(n: anytype) @TypeOf((n & @as(c_int, 1)) << @as(c_int, 24)) {
    _ = &n;
    return (n & @as(c_int, 1)) << @as(c_int, 24);
}
pub inline fn DCAP_SRC_B(n: anytype) @TypeOf((n & @as(c_int, 1)) << @as(c_int, 25)) {
    _ = &n;
    return (n & @as(c_int, 1)) << @as(c_int, 25);
}
pub inline fn DCAP_SIZE(n: anytype) @TypeOf((n & @as(c_int, 3)) << @as(c_int, 20)) {
    _ = &n;
    return (n & @as(c_int, 3)) << @as(c_int, 20);
}
pub inline fn DCAP_OFFSET(n: anytype) @TypeOf((n & @as(c_int, 3)) << @as(c_int, 18)) {
    _ = &n;
    return (n & @as(c_int, 3)) << @as(c_int, 18);
}
pub inline fn DCAP_BANK(n: anytype) @TypeOf((n & @as(c_int, 3)) << @as(c_int, 16)) {
    _ = &n;
    return (n & @as(c_int, 3)) << @as(c_int, 16);
}
pub inline fn DCAP_B(n: anytype) @TypeOf((n & @as(c_int, 0x1F)) << @as(c_int, 8)) {
    _ = &n;
    return (n & @as(c_int, 0x1F)) << @as(c_int, 8);
}
pub inline fn DCAP_A(n: anytype) @TypeOf((n & @as(c_int, 0x1F)) << @as(c_int, 0)) {
    _ = &n;
    return (n & @as(c_int, 0x1F)) << @as(c_int, 0);
}
pub const DCAP_MODE_A = @as(c_int, 0);
pub const DCAP_MODE_B = @as(c_int, 1);
pub const DCAP_MODE_BLEND = @as(c_int, 2);
pub const DCAP_SRC_A_COMPOSITED = @as(c_int, 0);
pub const DCAP_SRC_A_3DONLY = @as(c_int, 1);
pub const DCAP_SRC_B_VRAM = @as(c_int, 0);
pub const DCAP_SRC_B_DISPFIFO = @as(c_int, 1);
pub const DCAP_SIZE_128x128 = @as(c_int, 0);
pub const DCAP_SIZE_256x64 = @as(c_int, 1);
pub const DCAP_SIZE_256x128 = @as(c_int, 2);
pub const DCAP_SIZE_256x192 = @as(c_int, 3);
pub const DCAP_BANK_VRAM_A = @as(c_int, 0);
pub const DCAP_BANK_VRAM_B = @as(c_int, 1);
pub const DCAP_BANK_VRAM_C = @as(c_int, 2);
pub const DCAP_BANK_VRAM_D = @as(c_int, 3);
pub const GFX_CONTROL = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000060, .hex)).*;
pub const GFX_RDLINES_COUNT = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000320, .hex)).*;
pub const GFX_FIFO = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000400, .hex)).*;
pub const GFX_STATUS = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000600, .hex)).*;
pub const GFX_COLOR = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000480, .hex)).*;
pub const GFX_VERTEX10 = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000490, .hex)).*;
pub const GFX_VERTEX_XY = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000494, .hex)).*;
pub const GFX_VERTEX_XZ = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000498, .hex)).*;
pub const GFX_VERTEX_YZ = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400049C, .hex)).*;
pub const GFX_VERTEX_DIFF = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040004A0, .hex)).*;
pub const GFX_VERTEX16 = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400048C, .hex)).*;
pub const GFX_TEX_COORD = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000488, .hex)).*;
pub const GFX_TEX_FORMAT = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040004A8, .hex)).*;
pub const GFX_PAL_FORMAT = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040004AC, .hex)).*;
pub const GFX_CLEAR_COLOR = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000350, .hex)).*;
pub const GFX_CLEAR_DEPTH = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000354, .hex)).*;
pub const GFX_CLRIMAGE_OFFSET = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000356, .hex)).*;
pub const GFX_LIGHT_VECTOR = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040004C8, .hex)).*;
pub const GFX_LIGHT_COLOR = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040004CC, .hex)).*;
pub const GFX_NORMAL = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000484, .hex)).*;
pub const GFX_DIFFUSE_AMBIENT = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040004C0, .hex)).*;
pub const GFX_SPECULAR_EMISSION = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040004C4, .hex)).*;
pub const GFX_SHININESS = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040004D0, .hex)).*;
pub const GFX_POLY_FORMAT = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040004A4, .hex)).*;
pub const GFX_ALPHA_TEST = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000340, .hex)).*;
pub const GFX_BEGIN = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000500, .hex)).*;
pub const GFX_END = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000504, .hex)).*;
pub const GFX_FLUSH = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000540, .hex)).*;
pub const GFX_VIEWPORT = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000580, .hex)).*;
pub const GFX_TOON_TABLE = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000380, .hex));
pub const GFX_EDGE_TABLE = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000330, .hex));
pub const GFX_FOG_COLOR = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000358, .hex)).*;
pub const GFX_FOG_OFFSET = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400035C, .hex)).*;
pub const GFX_FOG_TABLE = @import("std").zig.c_translation.cast([*c]vu8, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000360, .hex));
pub const GFX_BOX_TEST = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040005C0, .hex)).*;
pub const GFX_POS_TEST = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040005C4, .hex)).*;
pub const GFX_POS_RESULT = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000620, .hex));
pub const GFX_VEC_TEST = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040005C8, .hex)).*;
pub const GFX_VEC_RESULT = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000630, .hex));
pub const GFX_BUSY = GFX_STATUS & BIT(@as(c_int, 27));
pub const GFX_VERTEX_RAM_USAGE = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000606, .hex)).*;
pub const GFX_POLYGON_RAM_USAGE = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000604, .hex)).*;
pub const GFX_CUTOFF_DEPTH = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000610, .hex)).*;
pub const MATRIX_CONTROL = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000440, .hex)).*;
pub const MATRIX_PUSH = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000444, .hex)).*;
pub const MATRIX_POP = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000448, .hex)).*;
pub const MATRIX_SCALE = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400046C, .hex)).*;
pub const MATRIX_TRANSLATE = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000470, .hex)).*;
pub const MATRIX_RESTORE = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000450, .hex)).*;
pub const MATRIX_STORE = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400044C, .hex)).*;
pub const MATRIX_IDENTITY = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000454, .hex)).*;
pub const MATRIX_LOAD4x4 = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000458, .hex)).*;
pub const MATRIX_LOAD4x3 = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400045C, .hex)).*;
pub const MATRIX_MULT4x4 = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000460, .hex)).*;
pub const MATRIX_MULT4x3 = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000464, .hex)).*;
pub const MATRIX_MULT3x3 = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000468, .hex)).*;
pub const MATRIX_READ_CLIP = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000640, .hex));
pub const MATRIX_READ_VECTOR = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000680, .hex));
pub const POINT_RESULT = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000620, .hex));
pub const VECTOR_RESULT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000630, .hex));
pub const MAP_BASE_SHIFT = @as(c_int, 8);
pub const TILE_BASE_SHIFT = @as(c_int, 2);
pub inline fn BG_TILE_BASE(base: anytype) @TypeOf(base << TILE_BASE_SHIFT) {
    _ = &base;
    return base << TILE_BASE_SHIFT;
}
pub inline fn BG_MAP_BASE(base: anytype) @TypeOf(base << MAP_BASE_SHIFT) {
    _ = &base;
    return base << MAP_BASE_SHIFT;
}
pub inline fn BG_BMP_BASE(base: anytype) @TypeOf(base << MAP_BASE_SHIFT) {
    _ = &base;
    return base << MAP_BASE_SHIFT;
}
pub inline fn BG_PRIORITY(n: anytype) @TypeOf(n) {
    _ = &n;
    return n;
}
pub inline fn TILE_PALETTE(n: anytype) @TypeOf(n << @as(c_int, 12)) {
    _ = &n;
    return n << @as(c_int, 12);
}
pub const TILE_FLIP_H = BIT(@as(c_int, 10));
pub const TILE_FLIP_V = BIT(@as(c_int, 11));
pub const BACKGROUND = @import("std").zig.c_translation.cast([*c]bg_attribute, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000008, .hex)).*;
pub const BG_OFFSET = @import("std").zig.c_translation.cast([*c]bg_scroll, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000010, .hex));
pub inline fn BG_MAP_RAM(base: anytype) [*c]@"u16" {
    _ = &base;
    return @import("std").zig.c_translation.cast([*c]@"u16", (base * @as(c_int, 0x800)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06000000, .hex));
}
pub inline fn BG_TILE_RAM(base: anytype) [*c]@"u16" {
    _ = &base;
    return @import("std").zig.c_translation.cast([*c]@"u16", (base * @as(c_int, 0x4000)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06000000, .hex));
}
pub inline fn BG_BMP_RAM(base: anytype) [*c]@"u16" {
    _ = &base;
    return @import("std").zig.c_translation.cast([*c]@"u16", (base * @as(c_int, 0x4000)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06000000, .hex));
}
pub inline fn CHAR_BASE_BLOCK(n: anytype) @TypeOf((n * @as(c_int, 0x4000)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06000000, .hex)) {
    _ = &n;
    return (n * @as(c_int, 0x4000)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06000000, .hex);
}
pub inline fn SCREEN_BASE_BLOCK(n: anytype) @TypeOf((n * @as(c_int, 0x800)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06000000, .hex)) {
    _ = &n;
    return (n * @as(c_int, 0x800)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06000000, .hex);
}
pub const BGCTRL = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000008, .hex));
pub const REG_BG0CNT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000008, .hex)).*;
pub const REG_BG1CNT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400000A, .hex)).*;
pub const REG_BG2CNT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400000C, .hex)).*;
pub const REG_BG3CNT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400000E, .hex)).*;
pub const REG_BGOFFSETS = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000010, .hex));
pub const REG_BG0HOFS = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000010, .hex)).*;
pub const REG_BG0VOFS = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000012, .hex)).*;
pub const REG_BG1HOFS = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000014, .hex)).*;
pub const REG_BG1VOFS = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000016, .hex)).*;
pub const REG_BG2HOFS = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000018, .hex)).*;
pub const REG_BG2VOFS = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400001A, .hex)).*;
pub const REG_BG3HOFS = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400001C, .hex)).*;
pub const REG_BG3VOFS = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400001E, .hex)).*;
pub const REG_BG2PA = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000020, .hex)).*;
pub const REG_BG2PB = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000022, .hex)).*;
pub const REG_BG2PC = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000024, .hex)).*;
pub const REG_BG2PD = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000026, .hex)).*;
pub const REG_BG2X = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000028, .hex)).*;
pub const REG_BG2Y = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400002C, .hex)).*;
pub const REG_BG3PA = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000030, .hex)).*;
pub const REG_BG3PB = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000032, .hex)).*;
pub const REG_BG3PC = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000034, .hex)).*;
pub const REG_BG3PD = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000036, .hex)).*;
pub const REG_BG3X = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4000038, .hex)).*;
pub const REG_BG3Y = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400003C, .hex)).*;
pub const BACKGROUND_SUB = @import("std").zig.c_translation.cast([*c]bg_attribute, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001008, .hex)).*;
pub const BG_OFFSET_SUB = @import("std").zig.c_translation.cast([*c]bg_scroll, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04001010, .hex));
pub inline fn BG_MAP_RAM_SUB(base: anytype) [*c]@"u16" {
    _ = &base;
    return @import("std").zig.c_translation.cast([*c]@"u16", (base * @as(c_int, 0x800)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06200000, .hex));
}
pub inline fn BG_TILE_RAM_SUB(base: anytype) [*c]@"u16" {
    _ = &base;
    return @import("std").zig.c_translation.cast([*c]@"u16", (base * @as(c_int, 0x4000)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06200000, .hex));
}
pub inline fn BG_BMP_RAM_SUB(base: anytype) [*c]@"u16" {
    _ = &base;
    return @import("std").zig.c_translation.cast([*c]@"u16", (base * @as(c_int, 0x4000)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06200000, .hex));
}
pub inline fn SCREEN_BASE_BLOCK_SUB(n: anytype) @TypeOf((n * @as(c_int, 0x800)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06200000, .hex)) {
    _ = &n;
    return (n * @as(c_int, 0x800)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06200000, .hex);
}
pub inline fn CHAR_BASE_BLOCK_SUB(n: anytype) @TypeOf((n * @as(c_int, 0x4000)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06200000, .hex)) {
    _ = &n;
    return (n * @as(c_int, 0x4000)) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x06200000, .hex);
}
pub const BGCTRL_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001008, .hex));
pub const REG_BG0CNT_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001008, .hex)).*;
pub const REG_BG1CNT_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400100A, .hex)).*;
pub const REG_BG2CNT_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400100C, .hex)).*;
pub const REG_BG3CNT_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400100E, .hex)).*;
pub const REG_BGOFFSETS_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001010, .hex));
pub const REG_BG0HOFS_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001010, .hex)).*;
pub const REG_BG0VOFS_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001012, .hex)).*;
pub const REG_BG1HOFS_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001014, .hex)).*;
pub const REG_BG1VOFS_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001016, .hex)).*;
pub const REG_BG2HOFS_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001018, .hex)).*;
pub const REG_BG2VOFS_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400101A, .hex)).*;
pub const REG_BG3HOFS_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400101C, .hex)).*;
pub const REG_BG3VOFS_SUB = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400101E, .hex)).*;
pub const REG_BG2PA_SUB = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001020, .hex)).*;
pub const REG_BG2PB_SUB = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001022, .hex)).*;
pub const REG_BG2PC_SUB = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001024, .hex)).*;
pub const REG_BG2PD_SUB = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001026, .hex)).*;
pub const REG_BG2X_SUB = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001028, .hex)).*;
pub const REG_BG2Y_SUB = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400102C, .hex)).*;
pub const REG_BG3PA_SUB = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001030, .hex)).*;
pub const REG_BG3PB_SUB = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001032, .hex)).*;
pub const REG_BG3PC_SUB = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001034, .hex)).*;
pub const REG_BG3PD_SUB = @import("std").zig.c_translation.cast([*c]vs16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001036, .hex)).*;
pub const REG_BG3X_SUB = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x4001038, .hex)).*;
pub const REG_BG3Y_SUB = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x400103C, .hex)).*;
pub const BOX_TEST_INCLUDE = "";
pub const VIDEOGL_ARM9_INCLUDE = "";
pub const _cache_h_ = "";
pub const TRIG_LUT_H = "";
pub const DEGREES_IN_CIRCLE = @as(c_int, 1) << @as(c_int, 15);
pub inline fn fixedToInt(n: anytype, bits: anytype) c_int {
    _ = &n;
    _ = &bits;
    return @import("std").zig.c_translation.cast(c_int, n >> bits);
}
pub inline fn intToFixed(n: anytype, bits: anytype) c_int {
    _ = &n;
    _ = &bits;
    return @import("std").zig.c_translation.cast(c_int, n << bits);
}
pub inline fn floatToFixed(n: anytype, bits: anytype) c_int {
    _ = &n;
    _ = &bits;
    return @import("std").zig.c_translation.cast(c_int, n * @import("std").zig.c_translation.cast(f32, @as(c_int, 1) << bits));
}
pub inline fn fixedToFloat(n: anytype, bits: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(f32, n), @import("std").zig.c_translation.cast(f32, @as(c_int, 1) << bits))) {
    _ = &n;
    _ = &bits;
    return @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(f32, n), @import("std").zig.c_translation.cast(f32, @as(c_int, 1) << bits));
}
pub inline fn floorFixed(n: anytype, bits: anytype) c_int {
    _ = &n;
    _ = &bits;
    return @import("std").zig.c_translation.cast(c_int, n & ~((@as(c_int, 1) << bits) - @as(c_int, 1)));
}
pub inline fn degreesToAngle(degrees: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(degrees * DEGREES_IN_CIRCLE, @as(c_int, 360))) {
    _ = &degrees;
    return @import("std").zig.c_translation.MacroArithmetic.div(degrees * DEGREES_IN_CIRCLE, @as(c_int, 360));
}
pub inline fn angleToDegrees(angle: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(angle * @as(c_int, 360), DEGREES_IN_CIRCLE)) {
    _ = &angle;
    return @import("std").zig.c_translation.MacroArithmetic.div(angle * @as(c_int, 360), DEGREES_IN_CIRCLE);
}
pub const MATH_ARM9_INCLUDE = "";
pub const REG_DIVCNT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000280, .hex)).*;
pub const REG_DIV_NUMER = @import("std").zig.c_translation.cast([*c]vs64, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000290, .hex)).*;
pub const REG_DIV_NUMER_L = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000290, .hex)).*;
pub const REG_DIV_NUMER_H = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000294, .hex)).*;
pub const REG_DIV_DENOM = @import("std").zig.c_translation.cast([*c]vs64, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000298, .hex)).*;
pub const REG_DIV_DENOM_L = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000298, .hex)).*;
pub const REG_DIV_DENOM_H = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0400029C, .hex)).*;
pub const REG_DIV_RESULT = @import("std").zig.c_translation.cast([*c]vs64, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040002A0, .hex)).*;
pub const REG_DIV_RESULT_L = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040002A0, .hex)).*;
pub const REG_DIV_RESULT_H = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040002A4, .hex)).*;
pub const REG_DIVREM_RESULT = @import("std").zig.c_translation.cast([*c]vs64, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040002A8, .hex)).*;
pub const REG_DIVREM_RESULT_L = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040002A8, .hex)).*;
pub const REG_DIVREM_RESULT_H = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040002AC, .hex)).*;
pub const REG_SQRTCNT = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040002B0, .hex)).*;
pub const REG_SQRT_PARAM = @import("std").zig.c_translation.cast([*c]vs64, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040002B8, .hex)).*;
pub const REG_SQRT_PARAM_L = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040002B8, .hex)).*;
pub const REG_SQRT_PARAM_H = @import("std").zig.c_translation.cast([*c]vs32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040002BC, .hex)).*;
pub const REG_SQRT_RESULT = @import("std").zig.c_translation.cast([*c]vu32, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x040002B4, .hex)).*;
pub const DIV_64_64 = @as(c_int, 2);
pub const DIV_64_32 = @as(c_int, 1);
pub const DIV_32_32 = @as(c_int, 0);
pub const DIV_BUSY = @as(c_int, 1) << @as(c_int, 15);
pub const SQRT_64 = @as(c_int, 1);
pub const SQRT_32 = @as(c_int, 0);
pub const SQRT_BUSY = @as(c_int, 1) << @as(c_int, 15);
pub inline fn inttof32(n: anytype) @TypeOf(n * (@as(c_int, 1) << @as(c_int, 12))) {
    _ = &n;
    return n * (@as(c_int, 1) << @as(c_int, 12));
}
pub inline fn f32toint(n: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(n, @as(c_int, 1) << @as(c_int, 12))) {
    _ = &n;
    return @import("std").zig.c_translation.MacroArithmetic.div(n, @as(c_int, 1) << @as(c_int, 12));
}
pub inline fn floattof32(n: anytype) c_int {
    _ = &n;
    return @import("std").zig.c_translation.cast(c_int, n * (@as(c_int, 1) << @as(c_int, 12)));
}
pub inline fn f32tofloat(n: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(f32, n), @import("std").zig.c_translation.cast(f32, @as(c_int, 1) << @as(c_int, 12)))) {
    _ = &n;
    return @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(f32, n), @import("std").zig.c_translation.cast(f32, @as(c_int, 1) << @as(c_int, 12)));
}
pub const LUT_SIZE = @as(c_int, 1) << @as(c_int, 15);
pub const LUT_MASK = (@as(c_int, 1) << @as(c_int, 15)) - @as(c_int, 1);
pub const MAX_TEXTURES = @as(c_int, 2048);
pub inline fn intto12d3(n: anytype) @TypeOf(n << @as(c_int, 3)) {
    _ = &n;
    return n << @as(c_int, 3);
}
pub inline fn floatto12d3(n: anytype) fixed12d3 {
    _ = &n;
    return @import("std").zig.c_translation.cast(fixed12d3, n * (@as(c_int, 1) << @as(c_int, 3)));
}
pub const GL_MAX_DEPTH = @as(c_int, 0x7FFF);
pub inline fn f32tot16(n: anytype) t16 {
    _ = &n;
    return @import("std").zig.c_translation.cast(t16, n >> @as(c_int, 8));
}
pub inline fn inttot16(n: anytype) @TypeOf(n << @as(c_int, 4)) {
    _ = &n;
    return n << @as(c_int, 4);
}
pub inline fn t16toint(n: anytype) @TypeOf(n >> @as(c_int, 4)) {
    _ = &n;
    return n >> @as(c_int, 4);
}
pub inline fn floattot16(n: anytype) t16 {
    _ = &n;
    return @import("std").zig.c_translation.cast(t16, n * (@as(c_int, 1) << @as(c_int, 4)));
}
pub inline fn TEXTURE_PACK(u: anytype, v: anytype) @TypeOf((u & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hex)) | (v << @as(c_int, 16))) {
    _ = &u;
    _ = &v;
    return (u & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hex)) | (v << @as(c_int, 16));
}
pub inline fn inttov16(n: anytype) @TypeOf(n << @as(c_int, 12)) {
    _ = &n;
    return n << @as(c_int, 12);
}
pub inline fn f32tov16(n: anytype) @TypeOf(n) {
    _ = &n;
    return n;
}
pub inline fn v16toint(n: anytype) @TypeOf(n >> @as(c_int, 12)) {
    _ = &n;
    return n >> @as(c_int, 12);
}
pub inline fn floattov16(n: anytype) v16 {
    _ = &n;
    return @import("std").zig.c_translation.cast(v16, n * (@as(c_int, 1) << @as(c_int, 12)));
}
pub inline fn VERTEX_PACK(x: anytype, y: anytype) @"u32" {
    _ = &x;
    _ = &y;
    return @import("std").zig.c_translation.cast(@"u32", (x & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hex)) | (y << @as(c_int, 16)));
}
pub inline fn inttov10(n: anytype) @TypeOf(n << @as(c_int, 9)) {
    _ = &n;
    return n << @as(c_int, 9);
}
pub inline fn f32tov10(n: anytype) v10 {
    _ = &n;
    return @import("std").zig.c_translation.cast(v10, n >> @as(c_int, 3));
}
pub inline fn v10toint(n: anytype) @TypeOf(n >> @as(c_int, 9)) {
    _ = &n;
    return n >> @as(c_int, 9);
}
pub inline fn floattov10(n: anytype) @TypeOf(if (n > @as(f64, 0.998)) @as(c_int, 0x1FF) else @import("std").zig.c_translation.cast(v10, n * (@as(c_int, 1) << @as(c_int, 9)))) {
    _ = &n;
    return if (n > @as(f64, 0.998)) @as(c_int, 0x1FF) else @import("std").zig.c_translation.cast(v10, n * (@as(c_int, 1) << @as(c_int, 9)));
}
pub inline fn NORMAL_PACK(x: anytype, y: anytype, z: anytype) @"u32" {
    _ = &x;
    _ = &y;
    _ = &z;
    return @import("std").zig.c_translation.cast(@"u32", ((x & @as(c_int, 0x3FF)) | ((y & @as(c_int, 0x3FF)) << @as(c_int, 10))) | (z << @as(c_int, 20)));
}
pub const GL_FALSE = @as(c_int, 0);
pub const GL_TRUE = @as(c_int, 1);
pub inline fn FIFO_COMMAND_PACK(c1: anytype, c2: anytype, c3: anytype, c4: anytype) @TypeOf((((c4 << @as(c_int, 24)) | (c3 << @as(c_int, 16))) | (c2 << @as(c_int, 8))) | c1) {
    _ = &c1;
    _ = &c2;
    _ = &c3;
    _ = &c4;
    return (((c4 << @as(c_int, 24)) | (c3 << @as(c_int, 16))) | (c2 << @as(c_int, 8))) | c1;
}
pub inline fn REG2ID(r: anytype) @"u8" {
    _ = &r;
    return @import("std").zig.c_translation.cast(@"u8", (@import("std").zig.c_translation.cast(@"u32", &r) - @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x04000400, .hex)) >> @as(c_int, 2));
}
pub const FIFO_NOP = REG2ID(GFX_FIFO);
pub const FIFO_STATUS = REG2ID(GFX_STATUS);
pub const FIFO_COLOR = REG2ID(GFX_COLOR);
pub const FIFO_VERTEX16 = REG2ID(GFX_VERTEX16);
pub const FIFO_VERTEX10 = REG2ID(GFX_VERTEX10);
pub const FIFO_VERTEX_XY = REG2ID(GFX_VERTEX_XY);
pub const FIFO_VERTEX_XZ = REG2ID(GFX_VERTEX_XZ);
pub const FIFO_VERTEX_YZ = REG2ID(GFX_VERTEX_YZ);
pub const FIFO_TEX_COORD = REG2ID(GFX_TEX_COORD);
pub const FIFO_TEX_FORMAT = REG2ID(GFX_TEX_FORMAT);
pub const FIFO_PAL_FORMAT = REG2ID(GFX_PAL_FORMAT);
pub const FIFO_CLEAR_COLOR = REG2ID(GFX_CLEAR_COLOR);
pub const FIFO_CLEAR_DEPTH = REG2ID(GFX_CLEAR_DEPTH);
pub const FIFO_LIGHT_VECTOR = REG2ID(GFX_LIGHT_VECTOR);
pub const FIFO_LIGHT_COLOR = REG2ID(GFX_LIGHT_COLOR);
pub const FIFO_NORMAL = REG2ID(GFX_NORMAL);
pub const FIFO_DIFFUSE_AMBIENT = REG2ID(GFX_DIFFUSE_AMBIENT);
pub const FIFO_SPECULAR_EMISSION = REG2ID(GFX_SPECULAR_EMISSION);
pub const FIFO_SHININESS = REG2ID(GFX_SHININESS);
pub const FIFO_POLY_FORMAT = REG2ID(GFX_POLY_FORMAT);
pub const FIFO_BEGIN = REG2ID(GFX_BEGIN);
pub const FIFO_END = REG2ID(GFX_END);
pub const FIFO_FLUSH = REG2ID(GFX_FLUSH);
pub const FIFO_VIEWPORT = REG2ID(GFX_VIEWPORT);
pub const glTranslate3f32 = glTranslatef32;
pub const CONSOLE_H = "";
pub const NDS_DECOMPRESS = "";
pub const _exceptions_h_ = "";
pub const EXCEPTION_VECTOR = @import("std").zig.c_translation.cast([*c]VoidFn, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x2FFFD9C, .hex)).*;
pub const GUITARGRIP_HEADER_INCLUDE = "";
pub const GUITARGRIP_GREEN = BIT(@as(c_int, 6));
pub const GUITARGRIP_RED = BIT(@as(c_int, 5));
pub const GUITARGRIP_YELLOW = BIT(@as(c_int, 4));
pub const GUITARGRIP_BLUE = BIT(@as(c_int, 3));
pub const IMAGE_H = "";
pub const PCX_H = "";
pub const INPUT_HEADER_INCLUDE = "";
pub const __KEYBOARD_H__ = "";
pub const PADDLE_HEADER_INCLUDE = "";
pub const PIANO_HEADER_INCLUDE = "";
pub const PIANO_PAK = @import("std").zig.c_translation.cast([*c]vu16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x09FFFFFE, .hex)).*;
pub const PIANO_C = BIT(@as(c_int, 0));
pub const PIANO_CS = BIT(@as(c_int, 1));
pub const PIANO_D = BIT(@as(c_int, 2));
pub const PIANO_DS = BIT(@as(c_int, 3));
pub const PIANO_E = BIT(@as(c_int, 4));
pub const PIANO_F = BIT(@as(c_int, 5));
pub const PIANO_FS = BIT(@as(c_int, 6));
pub const PIANO_G = BIT(@as(c_int, 7));
pub const PIANO_GS = BIT(@as(c_int, 8));
pub const PIANO_A = BIT(@as(c_int, 9));
pub const PIANO_AS = BIT(@as(c_int, 10));
pub const PIANO_B = BIT(@as(c_int, 13));
pub const PIANO_C2 = BIT(@as(c_int, 14));
pub const RUMBLE_HEADER_INCLUDE = "";
pub const RUMBLE_PAK = @import("std").zig.c_translation.cast([*c]vuint16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x08000000, .hex)).*;
pub const WARIOWARE_PAK = @import("std").zig.c_translation.cast([*c]vuint16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x080000C4, .hex)).*;
pub const WARIOWARE_ENABLE = @import("std").zig.c_translation.cast([*c]vuint16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x080000C6, .hex)).*;
pub const _sound_h_ = "";
pub const _libnds_sprite_h_ = "";
pub const ATTR0_NORMAL = @as(c_int, 0) << @as(c_int, 8);
pub const ATTR0_ROTSCALE = @as(c_int, 1) << @as(c_int, 8);
pub const ATTR0_DISABLED = @as(c_int, 2) << @as(c_int, 8);
pub const ATTR0_ROTSCALE_DOUBLE = @as(c_int, 3) << @as(c_int, 8);
pub const ATTR0_TYPE_NORMAL = @as(c_int, 0) << @as(c_int, 10);
pub const ATTR0_TYPE_BLENDED = @as(c_int, 1) << @as(c_int, 10);
pub const ATTR0_TYPE_WINDOWED = @as(c_int, 2) << @as(c_int, 10);
pub const ATTR0_BMP = @as(c_int, 3) << @as(c_int, 10);
pub const ATTR0_MOSAIC = @as(c_int, 1) << @as(c_int, 12);
pub const ATTR0_COLOR_16 = @as(c_int, 0) << @as(c_int, 13);
pub const ATTR0_COLOR_256 = @as(c_int, 1) << @as(c_int, 13);
pub const ATTR0_SQUARE = @as(c_int, 0) << @as(c_int, 14);
pub const ATTR0_WIDE = @as(c_int, 1) << @as(c_int, 14);
pub const ATTR0_TALL = @as(c_int, 2) << @as(c_int, 14);
pub inline fn OBJ_Y(m: anytype) @TypeOf(m & @as(c_int, 0x00ff)) {
    _ = &m;
    return m & @as(c_int, 0x00ff);
}
pub inline fn ATTR1_ROTDATA(n: anytype) @TypeOf(n << @as(c_int, 9)) {
    _ = &n;
    return n << @as(c_int, 9);
}
pub const ATTR1_FLIP_X = @as(c_int, 1) << @as(c_int, 12);
pub const ATTR1_FLIP_Y = @as(c_int, 1) << @as(c_int, 13);
pub const ATTR1_SIZE_8 = @as(c_int, 0) << @as(c_int, 14);
pub const ATTR1_SIZE_16 = @as(c_int, 1) << @as(c_int, 14);
pub const ATTR1_SIZE_32 = @as(c_int, 2) << @as(c_int, 14);
pub const ATTR1_SIZE_64 = @as(c_int, 3) << @as(c_int, 14);
pub inline fn OBJ_X(m: anytype) @TypeOf(m & @as(c_int, 0x01ff)) {
    _ = &m;
    return m & @as(c_int, 0x01ff);
}
pub inline fn ATTR2_PRIORITY(n: anytype) @TypeOf(n << @as(c_int, 10)) {
    _ = &n;
    return n << @as(c_int, 10);
}
pub inline fn ATTR2_PALETTE(n: anytype) @TypeOf(n << @as(c_int, 12)) {
    _ = &n;
    return n << @as(c_int, 12);
}
pub inline fn ATTR2_ALPHA(n: anytype) @TypeOf(n << @as(c_int, 12)) {
    _ = &n;
    return n << @as(c_int, 12);
}
pub const SPRITE_COUNT = @as(c_int, 128);
pub const MATRIX_COUNT = @as(c_int, 32);
pub inline fn SPRITE_SIZE_SHAPE(size: anytype) @TypeOf((size >> @as(c_int, 12)) & @as(c_int, 0x3)) {
    _ = &size;
    return (size >> @as(c_int, 12)) & @as(c_int, 0x3);
}
pub inline fn SPRITE_SIZE_SIZE(size: anytype) @TypeOf((size >> @as(c_int, 14)) & @as(c_int, 0x3)) {
    _ = &size;
    return (size >> @as(c_int, 14)) & @as(c_int, 0x3);
}
pub inline fn SPRITE_SIZE_PIXELS(size: anytype) @TypeOf((size & @as(c_int, 0xFFF)) << @as(c_int, 5)) {
    _ = &size;
    return (size & @as(c_int, 0xFFF)) << @as(c_int, 5);
}
pub const WINDOW_MASK = (WINDOW_0 | WINDOW_1) | WINDOW_OBJ;
pub const NDS_NAND_INCLUDE = "";
pub const _UNISTD_H_ = "";
pub const _SYS_UNISTD_H = "";
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _SYS_TYPES_H = "";
pub const __MACHINE_ENDIAN_H__ = "";
pub const _LITTLE_ENDIAN = @as(c_int, 1234);
pub const _BIG_ENDIAN = @as(c_int, 4321);
pub const _PDP_ENDIAN = @as(c_int, 3412);
pub const _BYTE_ORDER = _LITTLE_ENDIAN;
pub const _QUAD_HIGHWORD = @as(c_int, 1);
pub const _QUAD_LOWWORD = @as(c_int, 0);
pub const LITTLE_ENDIAN = _LITTLE_ENDIAN;
pub const BIG_ENDIAN = _BIG_ENDIAN;
pub const PDP_ENDIAN = _PDP_ENDIAN;
pub const BYTE_ORDER = _BYTE_ORDER;
pub inline fn __bswap16(_x: anytype) @TypeOf(__builtin_bswap16(_x)) {
    _ = &_x;
    return __builtin_bswap16(_x);
}
pub inline fn __bswap32(_x: anytype) @TypeOf(__builtin_bswap32(_x)) {
    _ = &_x;
    return __builtin_bswap32(_x);
}
pub inline fn __bswap64(_x: anytype) @TypeOf(__builtin_bswap64(_x)) {
    _ = &_x;
    return __builtin_bswap64(_x);
}
pub inline fn __htonl(_x: anytype) @TypeOf(__bswap32(_x)) {
    _ = &_x;
    return __bswap32(_x);
}
pub inline fn __htons(_x: anytype) @TypeOf(__bswap16(_x)) {
    _ = &_x;
    return __bswap16(_x);
}
pub inline fn __ntohl(_x: anytype) @TypeOf(__bswap32(_x)) {
    _ = &_x;
    return __bswap32(_x);
}
pub inline fn __ntohs(_x: anytype) @TypeOf(__bswap16(_x)) {
    _ = &_x;
    return __bswap16(_x);
}
pub const _SYS_SELECT_H = "";
pub const _SYS__SIGSET_H_ = "";
pub const _SYS__TIMEVAL_H_ = "";
pub const _SUSECONDS_T_DECLARED = "";
pub const __time_t_defined = "";
pub const _TIME_T_DECLARED = "";
pub const _TIMEVAL_DEFINED = "";
pub const _SYS_TIMESPEC_H_ = "";
pub const _SYS__TIMESPEC_H_ = "";
pub const _SIGSET_T_DECLARED = "";
pub const _SYS_TYPES_FD_SET = "";
pub const FD_SETSIZE = @as(c_int, 64);
pub const _NFDBITS = @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask)) * @as(c_int, 8);
pub const NFDBITS = _NFDBITS;
pub inline fn _howmany(x: anytype, y: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(x + (y - @as(c_int, 1)), y)) {
    _ = &x;
    _ = &y;
    return @import("std").zig.c_translation.MacroArithmetic.div(x + (y - @as(c_int, 1)), y);
}
pub inline fn __fdset_mask(n: anytype) @TypeOf(@import("std").zig.c_translation.cast(__fd_mask, @as(c_int, 1)) << @import("std").zig.c_translation.MacroArithmetic.rem(n, _NFDBITS)) {
    _ = &n;
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_int, 1)) << @import("std").zig.c_translation.MacroArithmetic.rem(n, _NFDBITS);
}
pub inline fn FD_ISSET(n: anytype, p: anytype) @TypeOf((p.*.__fds_bits[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(n, _NFDBITS)))] & __fdset_mask(n)) != @as(c_int, 0)) {
    _ = &n;
    _ = &p;
    return (p.*.__fds_bits[@as(usize, @intCast(@import("std").zig.c_translation.MacroArithmetic.div(n, _NFDBITS)))] & __fdset_mask(n)) != @as(c_int, 0);
}
pub const _IN_ADDR_T_DECLARED = "";
pub const _IN_PORT_T_DECLARED = "";
pub const __u_char_defined = "";
pub const __u_short_defined = "";
pub const __u_int_defined = "";
pub const __u_long_defined = "";
pub const _BSDTYPES_DEFINED = "";
pub const _BLKCNT_T_DECLARED = "";
pub const _BLKSIZE_T_DECLARED = "";
pub const __clock_t_defined = "";
pub const _CLOCK_T_DECLARED = "";
pub const __caddr_t_defined = "";
pub const _FSBLKCNT_T_DECLARED = "";
pub const _ID_T_DECLARED = "";
pub const _INO_T_DECLARED = "";
pub const _OFF_T_DECLARED = "";
pub const _DEV_T_DECLARED = "";
pub const _UID_T_DECLARED = "";
pub const _GID_T_DECLARED = "";
pub const _PID_T_DECLARED = "";
pub const _KEY_T_DECLARED = "";
pub const _SSIZE_T_DECLARED = "";
pub const _MODE_T_DECLARED = "";
pub const _NLINK_T_DECLARED = "";
pub const __clockid_t_defined = "";
pub const _CLOCKID_T_DECLARED = "";
pub const __timer_t_defined = "";
pub const _TIMER_T_DECLARED = "";
pub const _USECONDS_T_DECLARED = "";
pub const _SYS__PTHREADTYPES_H_ = "";
pub const _SYS_SCHED_H_ = "";
pub const SCHED_OTHER = @as(c_int, 0);
pub const SCHED_FIFO = @as(c_int, 1);
pub const SCHED_RR = @as(c_int, 2);
pub const PTHREAD_SCOPE_PROCESS = @as(c_int, 0);
pub const PTHREAD_SCOPE_SYSTEM = @as(c_int, 1);
pub const PTHREAD_INHERIT_SCHED = @as(c_int, 1);
pub const PTHREAD_EXPLICIT_SCHED = @as(c_int, 2);
pub const PTHREAD_CREATE_DETACHED = @as(c_int, 0);
pub const PTHREAD_CREATE_JOINABLE = @as(c_int, 1);
pub const PTHREAD_MUTEX_NORMAL = @as(c_int, 0);
pub const PTHREAD_MUTEX_RECURSIVE = @as(c_int, 1);
pub const PTHREAD_MUTEX_ERRORCHECK = @as(c_int, 2);
pub const PTHREAD_MUTEX_DEFAULT = @as(c_int, 3);
pub const PTHREAD_RECURSIVE_MUTEX_INITIALIZER = PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP;
pub const _PTHREAD_RWLOCK_INITIALIZER = @import("std").mem.zeroInit(pthread_rwlock_t, .{ __LOCK_INITIALIZER, __COND_INITIALIZER, __COND_INITIALIZER, @as(c_int, 0), @as(c_int, 0) });
pub const F_ULOCK = @as(c_int, 0);
pub const F_LOCK = @as(c_int, 1);
pub const F_TLOCK = @as(c_int, 2);
pub const F_TEST = @as(c_int, 3);
pub const F_OK = @as(c_int, 0);
pub const R_OK = @as(c_int, 4);
pub const W_OK = @as(c_int, 2);
pub const X_OK = @as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const STDIN_FILENO = @as(c_int, 0);
pub const STDOUT_FILENO = @as(c_int, 1);
pub const STDERR_FILENO = @as(c_int, 2);
pub const _SC_ARG_MAX = @as(c_int, 0);
pub const _SC_CHILD_MAX = @as(c_int, 1);
pub const _SC_CLK_TCK = @as(c_int, 2);
pub const _SC_NGROUPS_MAX = @as(c_int, 3);
pub const _SC_OPEN_MAX = @as(c_int, 4);
pub const _SC_JOB_CONTROL = @as(c_int, 5);
pub const _SC_SAVED_IDS = @as(c_int, 6);
pub const _SC_VERSION = @as(c_int, 7);
pub const _SC_PAGESIZE = @as(c_int, 8);
pub const _SC_PAGE_SIZE = _SC_PAGESIZE;
pub const _SC_NPROCESSORS_CONF = @as(c_int, 9);
pub const _SC_NPROCESSORS_ONLN = @as(c_int, 10);
pub const _SC_PHYS_PAGES = @as(c_int, 11);
pub const _SC_AVPHYS_PAGES = @as(c_int, 12);
pub const _SC_MQ_OPEN_MAX = @as(c_int, 13);
pub const _SC_MQ_PRIO_MAX = @as(c_int, 14);
pub const _SC_RTSIG_MAX = @as(c_int, 15);
pub const _SC_SEM_NSEMS_MAX = @as(c_int, 16);
pub const _SC_SEM_VALUE_MAX = @as(c_int, 17);
pub const _SC_SIGQUEUE_MAX = @as(c_int, 18);
pub const _SC_TIMER_MAX = @as(c_int, 19);
pub const _SC_TZNAME_MAX = @as(c_int, 20);
pub const _SC_ASYNCHRONOUS_IO = @as(c_int, 21);
pub const _SC_FSYNC = @as(c_int, 22);
pub const _SC_MAPPED_FILES = @as(c_int, 23);
pub const _SC_MEMLOCK = @as(c_int, 24);
pub const _SC_MEMLOCK_RANGE = @as(c_int, 25);
pub const _SC_MEMORY_PROTECTION = @as(c_int, 26);
pub const _SC_MESSAGE_PASSING = @as(c_int, 27);
pub const _SC_PRIORITIZED_IO = @as(c_int, 28);
pub const _SC_REALTIME_SIGNALS = @as(c_int, 29);
pub const _SC_SEMAPHORES = @as(c_int, 30);
pub const _SC_SHARED_MEMORY_OBJECTS = @as(c_int, 31);
pub const _SC_SYNCHRONIZED_IO = @as(c_int, 32);
pub const _SC_TIMERS = @as(c_int, 33);
pub const _SC_AIO_LISTIO_MAX = @as(c_int, 34);
pub const _SC_AIO_MAX = @as(c_int, 35);
pub const _SC_AIO_PRIO_DELTA_MAX = @as(c_int, 36);
pub const _SC_DELAYTIMER_MAX = @as(c_int, 37);
pub const _SC_THREAD_KEYS_MAX = @as(c_int, 38);
pub const _SC_THREAD_STACK_MIN = @as(c_int, 39);
pub const _SC_THREAD_THREADS_MAX = @as(c_int, 40);
pub const _SC_TTY_NAME_MAX = @as(c_int, 41);
pub const _SC_THREADS = @as(c_int, 42);
pub const _SC_THREAD_ATTR_STACKADDR = @as(c_int, 43);
pub const _SC_THREAD_ATTR_STACKSIZE = @as(c_int, 44);
pub const _SC_THREAD_PRIORITY_SCHEDULING = @as(c_int, 45);
pub const _SC_THREAD_PRIO_INHERIT = @as(c_int, 46);
pub const _SC_THREAD_PRIO_PROTECT = @as(c_int, 47);
pub const _SC_THREAD_PRIO_CEILING = _SC_THREAD_PRIO_PROTECT;
pub const _SC_THREAD_PROCESS_SHARED = @as(c_int, 48);
pub const _SC_THREAD_SAFE_FUNCTIONS = @as(c_int, 49);
pub const _SC_GETGR_R_SIZE_MAX = @as(c_int, 50);
pub const _SC_GETPW_R_SIZE_MAX = @as(c_int, 51);
pub const _SC_LOGIN_NAME_MAX = @as(c_int, 52);
pub const _SC_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 53);
pub const _SC_ADVISORY_INFO = @as(c_int, 54);
pub const _SC_ATEXIT_MAX = @as(c_int, 55);
pub const _SC_BARRIERS = @as(c_int, 56);
pub const _SC_BC_BASE_MAX = @as(c_int, 57);
pub const _SC_BC_DIM_MAX = @as(c_int, 58);
pub const _SC_BC_SCALE_MAX = @as(c_int, 59);
pub const _SC_BC_STRING_MAX = @as(c_int, 60);
pub const _SC_CLOCK_SELECTION = @as(c_int, 61);
pub const _SC_COLL_WEIGHTS_MAX = @as(c_int, 62);
pub const _SC_CPUTIME = @as(c_int, 63);
pub const _SC_EXPR_NEST_MAX = @as(c_int, 64);
pub const _SC_HOST_NAME_MAX = @as(c_int, 65);
pub const _SC_IOV_MAX = @as(c_int, 66);
pub const _SC_IPV6 = @as(c_int, 67);
pub const _SC_LINE_MAX = @as(c_int, 68);
pub const _SC_MONOTONIC_CLOCK = @as(c_int, 69);
pub const _SC_RAW_SOCKETS = @as(c_int, 70);
pub const _SC_READER_WRITER_LOCKS = @as(c_int, 71);
pub const _SC_REGEXP = @as(c_int, 72);
pub const _SC_RE_DUP_MAX = @as(c_int, 73);
pub const _SC_SHELL = @as(c_int, 74);
pub const _SC_SPAWN = @as(c_int, 75);
pub const _SC_SPIN_LOCKS = @as(c_int, 76);
pub const _SC_SPORADIC_SERVER = @as(c_int, 77);
pub const _SC_SS_REPL_MAX = @as(c_int, 78);
pub const _SC_SYMLOOP_MAX = @as(c_int, 79);
pub const _SC_THREAD_CPUTIME = @as(c_int, 80);
pub const _SC_THREAD_SPORADIC_SERVER = @as(c_int, 81);
pub const _SC_TIMEOUTS = @as(c_int, 82);
pub const _SC_TRACE = @as(c_int, 83);
pub const _SC_TRACE_EVENT_FILTER = @as(c_int, 84);
pub const _SC_TRACE_EVENT_NAME_MAX = @as(c_int, 85);
pub const _SC_TRACE_INHERIT = @as(c_int, 86);
pub const _SC_TRACE_LOG = @as(c_int, 87);
pub const _SC_TRACE_NAME_MAX = @as(c_int, 88);
pub const _SC_TRACE_SYS_MAX = @as(c_int, 89);
pub const _SC_TRACE_USER_EVENT_MAX = @as(c_int, 90);
pub const _SC_TYPED_MEMORY_OBJECTS = @as(c_int, 91);
pub const _SC_V7_ILP32_OFF32 = @as(c_int, 92);
pub const _SC_V6_ILP32_OFF32 = _SC_V7_ILP32_OFF32;
pub const _SC_XBS5_ILP32_OFF32 = _SC_V7_ILP32_OFF32;
pub const _SC_V7_ILP32_OFFBIG = @as(c_int, 93);
pub const _SC_V6_ILP32_OFFBIG = _SC_V7_ILP32_OFFBIG;
pub const _SC_XBS5_ILP32_OFFBIG = _SC_V7_ILP32_OFFBIG;
pub const _SC_V7_LP64_OFF64 = @as(c_int, 94);
pub const _SC_V6_LP64_OFF64 = _SC_V7_LP64_OFF64;
pub const _SC_XBS5_LP64_OFF64 = _SC_V7_LP64_OFF64;
pub const _SC_V7_LPBIG_OFFBIG = @as(c_int, 95);
pub const _SC_V6_LPBIG_OFFBIG = _SC_V7_LPBIG_OFFBIG;
pub const _SC_XBS5_LPBIG_OFFBIG = _SC_V7_LPBIG_OFFBIG;
pub const _SC_XOPEN_CRYPT = @as(c_int, 96);
pub const _SC_XOPEN_ENH_I18N = @as(c_int, 97);
pub const _SC_XOPEN_LEGACY = @as(c_int, 98);
pub const _SC_XOPEN_REALTIME = @as(c_int, 99);
pub const _SC_STREAM_MAX = @as(c_int, 100);
pub const _SC_PRIORITY_SCHEDULING = @as(c_int, 101);
pub const _SC_XOPEN_REALTIME_THREADS = @as(c_int, 102);
pub const _SC_XOPEN_SHM = @as(c_int, 103);
pub const _SC_XOPEN_STREAMS = @as(c_int, 104);
pub const _SC_XOPEN_UNIX = @as(c_int, 105);
pub const _SC_XOPEN_VERSION = @as(c_int, 106);
pub const _SC_2_CHAR_TERM = @as(c_int, 107);
pub const _SC_2_C_BIND = @as(c_int, 108);
pub const _SC_2_C_DEV = @as(c_int, 109);
pub const _SC_2_FORT_DEV = @as(c_int, 110);
pub const _SC_2_FORT_RUN = @as(c_int, 111);
pub const _SC_2_LOCALEDEF = @as(c_int, 112);
pub const _SC_2_PBS = @as(c_int, 113);
pub const _SC_2_PBS_ACCOUNTING = @as(c_int, 114);
pub const _SC_2_PBS_CHECKPOINT = @as(c_int, 115);
pub const _SC_2_PBS_LOCATE = @as(c_int, 116);
pub const _SC_2_PBS_MESSAGE = @as(c_int, 117);
pub const _SC_2_PBS_TRACK = @as(c_int, 118);
pub const _SC_2_SW_DEV = @as(c_int, 119);
pub const _SC_2_UPE = @as(c_int, 120);
pub const _SC_2_VERSION = @as(c_int, 121);
pub const _SC_THREAD_ROBUST_PRIO_INHERIT = @as(c_int, 122);
pub const _SC_THREAD_ROBUST_PRIO_PROTECT = @as(c_int, 123);
pub const _SC_XOPEN_UUCP = @as(c_int, 124);
pub const _SC_LEVEL1_ICACHE_SIZE = @as(c_int, 125);
pub const _SC_LEVEL1_ICACHE_ASSOC = @as(c_int, 126);
pub const _SC_LEVEL1_ICACHE_LINESIZE = @as(c_int, 127);
pub const _SC_LEVEL1_DCACHE_SIZE = @as(c_int, 128);
pub const _SC_LEVEL1_DCACHE_ASSOC = @as(c_int, 129);
pub const _SC_LEVEL1_DCACHE_LINESIZE = @as(c_int, 130);
pub const _SC_LEVEL2_CACHE_SIZE = @as(c_int, 131);
pub const _SC_LEVEL2_CACHE_ASSOC = @as(c_int, 132);
pub const _SC_LEVEL2_CACHE_LINESIZE = @as(c_int, 133);
pub const _SC_LEVEL3_CACHE_SIZE = @as(c_int, 134);
pub const _SC_LEVEL3_CACHE_ASSOC = @as(c_int, 135);
pub const _SC_LEVEL3_CACHE_LINESIZE = @as(c_int, 136);
pub const _SC_LEVEL4_CACHE_SIZE = @as(c_int, 137);
pub const _SC_LEVEL4_CACHE_ASSOC = @as(c_int, 138);
pub const _SC_LEVEL4_CACHE_LINESIZE = @as(c_int, 139);
pub const _SC_POSIX_26_VERSION = @as(c_int, 140);
pub const _PC_LINK_MAX = @as(c_int, 0);
pub const _PC_MAX_CANON = @as(c_int, 1);
pub const _PC_MAX_INPUT = @as(c_int, 2);
pub const _PC_NAME_MAX = @as(c_int, 3);
pub const _PC_PATH_MAX = @as(c_int, 4);
pub const _PC_PIPE_BUF = @as(c_int, 5);
pub const _PC_CHOWN_RESTRICTED = @as(c_int, 6);
pub const _PC_NO_TRUNC = @as(c_int, 7);
pub const _PC_VDISABLE = @as(c_int, 8);
pub const _PC_ASYNC_IO = @as(c_int, 9);
pub const _PC_PRIO_IO = @as(c_int, 10);
pub const _PC_SYNC_IO = @as(c_int, 11);
pub const _PC_FILESIZEBITS = @as(c_int, 12);
pub const _PC_2_SYMLINKS = @as(c_int, 13);
pub const _PC_SYMLINK_MAX = @as(c_int, 14);
pub const _PC_ALLOC_SIZE_MIN = @as(c_int, 15);
pub const _PC_REC_INCR_XFER_SIZE = @as(c_int, 16);
pub const _PC_REC_MAX_XFER_SIZE = @as(c_int, 17);
pub const _PC_REC_MIN_XFER_SIZE = @as(c_int, 18);
pub const _PC_REC_XFER_ALIGN = @as(c_int, 19);
pub const _PC_TIMESTAMP_RESOLUTION = @as(c_int, 20);
pub const DecompressionStream = struct_DecompressionStream;
pub const UnpackStruct = struct_UnpackStruct;
pub const IRQ_MASKS = enum_IRQ_MASKS;
pub const IRQ_MASKSAUX = enum_IRQ_MASKSAUX;
pub const IME_VALUE = enum_IME_VALUE;
pub const IntTable = struct_IntTable;
pub const IPC_SYNC_BITS = enum_IPC_SYNC_BITS;
pub const IPC_CONTROL_BITS = enum_IPC_CONTROL_BITS;
pub const sGBAHeader = struct_sGBAHeader;
pub const sNDSHeader = struct_sNDSHeader;
pub const sNDSBanner = struct_sNDSBanner;
pub const sysVectors_t = struct_sysVectors_t;
pub const tPERSONAL_DATA = struct_tPERSONAL_DATA;
pub const __argv = struct___argv;
pub const __bootstub = struct___bootstub;
pub const swiSHA1context = struct_swiSHA1context;
pub const __lock_t = struct___lock_t;
pub const __sbuf = struct___sbuf;
pub const __sFILE = struct___sFILE;
pub const __locale_t = struct___locale_t;
pub const _Bigint = struct__Bigint;
pub const __tm = struct___tm;
pub const _rand48 = struct__rand48;
pub const _reent = struct__reent;
pub const _on_exit_args = struct__on_exit_args;
pub const _atexit = struct__atexit;
pub const _glue = struct__glue;
pub const GL_POLY_FORMAT_ENUM = enum_GL_POLY_FORMAT_ENUM;
pub const GL_TEXTURE_SIZE_ENUM = enum_GL_TEXTURE_SIZE_ENUM;
pub const GL_TEXTURE_PALETTE_PARAM_ENUM = enum_GL_TEXTURE_PALETTE_PARAM_ENUM;
pub const DISP3DCNT_ENUM = enum_DISP3DCNT_ENUM;
pub const GLFLUSH_ENUM = enum_GLFLUSH_ENUM;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const itimerspec = struct_itimerspec;
pub const sched_param = struct_sched_param;
pub const __pthread_t = struct___pthread_t;
