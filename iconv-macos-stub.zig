// SPDX-License-Identifier: MPL-2.0
//
// Copyright (c) 2024 Dominic Adragna


// TODO: HACK: NOTE: Untested code
const std = @import("std");

const iconv_t = ?*anyopaque;
const MACOS_SYS_TO_UTF16 = 0;
const MACOS_UTF16_TO_SYS = 1;

pub export fn iconv_open(tocode: ?[*:0]const u8, fromcode: ?[*:0]const u8) iconv_t {
    std.debug.assert(tocode != null);
    std.debug.assert(fromcode != null);

    std.debug.assert(
        (tocode.?[0] == 0 and std.mem.eql(u8, fromcode.?[0..8], "UTF-16LE"))
        or (fromcode.?[0] == 0 and std.mem.eql(u8, tocode.?[0..8], "UTF-16LE"))
    );
    if (fromcode.?[0] == 0) {
        return @as(?*anyopaque, @ptrFromInt(MACOS_SYS_TO_UTF16));
    }
    return @as(?*anyopaque, @ptrFromInt(MACOS_UTF16_TO_SYS));
}
pub export fn iconv(
    cd: iconv_t,
    noalias inbuf: *[*]u8,
    noalias inbytesleft: *usize,
    noalias outbuf: *[*]u8,
    noalias outbytesleft: *usize
) usize {

    if (@intFromPtr(cd) == MACOS_SYS_TO_UTF16) {
        const utf8 = inbuf.*;
        const utf16le = std.unicode.utf8ToUtf16LeAlloc(std.heap.c_allocator, utf8[0 .. inbytesleft.*-1])
            catch return std.math.maxInt(usize); // should return (size_t)-1

        const utf16le_ptr: [*]u8 = @ptrCast(utf16le.ptr);
        std.mem.copyForwards(u8, outbuf.*[0 .. (outbytesleft.* - 1)], utf16le_ptr[0 .. utf16le.len * 2]);
        outbuf.*[outbytesleft.*-1] = 0;
        return 0;

    } else { // MACOS_UTF16_TO_SYS
        const utf16le: [*]const u16 = @alignCast(@ptrCast(inbuf.*));

        const utf8 = std.unicode.utf16LeToUtf8Alloc(std.heap.c_allocator, utf16le[0 .. (inbytesleft.*-1)/2])
            catch return std.math.maxInt(usize); // should return (size_t)-1

        std.mem.copyForwards(u8, outbuf.*[0 .. outbytesleft.*-1], utf8);
        outbuf.*[outbytesleft.*-1] = 0;
        return 0;
    }
}