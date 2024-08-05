const std = @import("std");

pub const FoundSourceFiles = struct {
    builder: *std.Build,
    inner: []const []const u8,

    pub fn deinit(self: FoundSourceFiles) void {
        for (self.inner) |file| {
            self.builder.allocator.free(file);
        }
        self.builder.allocator.free(self.inner);
    }
};
pub fn find(b: *std.Build, sub_path: []const u8, comptime predicate: fn(path: []const u8) bool) FoundSourceFiles {
    return find_inner(b, sub_path, predicate)
        catch |e| std.debug.panic("error: {}", .{e});
}
fn find_inner(builder: *std.Build, sub_path: []const u8, comptime predicate: fn(path: []const u8) bool) !FoundSourceFiles {
    const alloc = builder.allocator;
    var dir = try builder.build_root.handle.openDir(sub_path, .{
        .iterate = true,
    });
    defer dir.close();

    var walker = try dir.walk(alloc);
    defer walker.deinit();

    var sources = std.ArrayList([]const u8).init(alloc);
    defer sources.deinit();


    while (try walker.next()) |entry| {
        if (entry.kind == .file) {
            if (predicate(entry.path)) {
                try sources.append(try alloc.dupe(u8, entry.path));
            }
        }
    }

    return .{
        .builder = builder,
        .inner = try sources.toOwnedSlice(),
    };
}
