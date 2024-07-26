const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();

    const allocator = gpa.allocator();

    const args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    var output = std.io.getStdOut();

    const valid_keys = .{ "include_dir", "sys_include_dir", "crt_dir" };


    for (args[1..]) |arg| {
        var iter = std.mem.splitScalar(u8, arg, '=');
        const key = iter.next() orelse return error.InvalidOrMissingKey;
        const value = iter.next() orelse return error.InvalidOrMissingValue;

        inline for (valid_keys) |valid_key| {
            if (std.mem.eql(u8, valid_key, key)) {
                try output.writeAll(valid_key ++ "=");
                try output.writeAll(value);
                try output.writeAll("\n");
            }
        }
//         std.process.exit()
//         output.writeAll();
//         std.debug.print("Argument: \"{s}\"\n", .{ arg });
    }
    try output.writeAll(
        \\msvc_lib_dir=
        \\kernel32_lib_dir=
        \\gcc_dir=
    );
//     var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
//     defer arena.deinit();
//     arena.allocator();
}