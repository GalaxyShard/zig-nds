// SPDX-License-Identifier: MPL-2.0
//
// Copyright (c) 2024 Dominic Adragna


// Stub for ndstool's utf16_convert_from_system & utf16_convert_to_system

const std = @import("std");

const iconv_t = ?*anyopaque;
const MACOS_SYS_TO_UTF16 = 0;
const MACOS_UTF16_TO_SYS = 1;

pub export fn iconv_open_zig(tocode: ?[*:0]const u8, fromcode: ?[*:0]const u8) iconv_t {
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
inline fn iconv_zig(
    cd: iconv_t,
    noalias inbuf: *[*]u8,
    noalias inbytesleft: *usize,
    noalias outbuf: *[*]u8,
    noalias outbytesleft: *usize
) usize {

    if (@intFromPtr(cd) == MACOS_SYS_TO_UTF16) {
        const utf8 = inbuf.*;
        const utf16le = std.unicode.utf8ToUtf16LeAlloc(std.heap.c_allocator, utf8[0 .. inbytesleft.*])
            catch return std.math.maxInt(usize); // should return (size_t)-1

        const utf16le_ptr: [*]u8 = @ptrCast(utf16le.ptr);
        std.mem.copyForwards(u8, outbuf.*[0 .. outbytesleft.*], utf16le_ptr[0 .. utf16le.len * 2]);
        return 0;

    } else { // MACOS_UTF16_TO_SYS
        const utf16le: [*]const u16 = @alignCast(@ptrCast(inbuf.*));

        const utf8 = std.unicode.utf16LeToUtf8Alloc(std.heap.c_allocator, utf16le[0 .. inbytesleft.*/2])
            catch return std.math.maxInt(usize); // should return (size_t)-1

        std.mem.copyForwards(u8, outbuf.*[0 .. outbytesleft.*], utf8);
        return 0;
    }
}

pub export fn iconv(
    cd: iconv_t,
    noalias inbuf: [*c][*c]u8,
    noalias inbytesleft: [*c]usize,
    noalias outbuf: [*c][*c]u8,
    noalias outbytesleft: [*c]usize
) usize {
    return iconv_zig(cd, @ptrCast(inbuf), inbytesleft, @ptrCast(outbuf), outbytesleft);
}
pub export fn iconv_open(tocode: [*c]const u8, fromcode: [*c]const u8) iconv_t {
    return iconv_open_zig(tocode, fromcode);
}



test "utf-8 to utf-16le round-trip" {

    const from_utf8 = iconv_open("UTF-16LE", "");
    const to_utf8 = iconv_open("", "UTF-16LE");


    const in_utf8: []u8 = try std.testing.allocator.dupe(u8, "testing conversion to UTF-16LE");
    defer std.testing.allocator.free(in_utf8);


    const utf16: []u8 = try std.testing.allocator.alloc(u8, 256);
    defer std.testing.allocator.free(utf16);
    {
        var in_utf8_ptr: [*c]u8 = in_utf8.ptr;
        var utf8_in_len = in_utf8.len;
        var utf16_ptr: [*c]u8 = utf16.ptr;
        var utf16_buf_len: usize = utf16.len;
        const out = iconv(from_utf8,
                            &in_utf8_ptr,
                            &utf8_in_len,
                            &utf16_ptr,
                            &utf16_buf_len);

        try std.testing.expect(out != -1);
    }


    const out_utf8: []u8 = try std.testing.allocator.alloc(u8, 256);
    defer std.testing.allocator.free(out_utf8);
    {
        var utf16_ptr: [*c]u8 = utf16.ptr;
        var utf16_in_len: usize = in_utf8.len*2;
        var out_utf8_ptr: [*c]u8 = out_utf8.ptr;
        var utf8_buf_len = out_utf8.len;
        const out = iconv(to_utf8,
                            &utf16_ptr,
                            &utf16_in_len,
                            &out_utf8_ptr,
                            &utf8_buf_len);

        try std.testing.expect(out != -1);
    }

    try std.testing.expectEqualStrings(in_utf8, out_utf8[0..in_utf8.len]);
}
