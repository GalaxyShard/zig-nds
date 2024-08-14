const std = @import("std");

pub const FoundSourceFiles = struct {
    builder: *std.Build,
    inner: []const []const u8,
    directory: std.Build.LazyPath,

    pub fn deinit(self: FoundSourceFiles) void {
        for (self.inner) |file| {
            self.builder.allocator.free(file);
        }
        self.builder.allocator.free(self.inner);
    }
};
pub fn find_dep(dep: *std.Build.Dependency, sub_path: []const u8, comptime predicate: fn(path: []const u8) bool) !FoundSourceFiles {
    return find(dep.builder, sub_path, predicate);
}
pub fn find(b: *std.Build, sub_path: []const u8, comptime predicate: fn(path: []const u8) bool) !FoundSourceFiles {
    const alloc = b.allocator;
    var dir = try b.build_root.handle.openDir(sub_path, .{
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
        .builder = b,
        .inner = try sources.toOwnedSlice(),
        .directory = b.path(sub_path),
    };
}
