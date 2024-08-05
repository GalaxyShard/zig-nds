const std = @import("std");

pub const FoundSourceFiles = struct {
    inner: []const []const u8,

    pub fn deinit(self: FoundSourceFiles, builder: *std.Build) void {
        for (self.inner) |file| {
            builder.allocator.free(file);
        }
        builder.allocator.free(self.inner);
    }
};
pub const FindSourceFilesOptions = struct {
    builder: *std.Build,
    sub_path: []const u8,
    extension: []const u8,
};
pub fn find(options: FindSourceFilesOptions) FoundSourceFiles {
    return find_source_files_inner(options) catch |e| std.debug.panic("error: {}", .{e});
}
fn find_source_files_inner(options: FindSourceFilesOptions) !FoundSourceFiles {
    const alloc = options.builder.allocator;
    var dir = try options.builder.build_root.handle.openDir(options.sub_path, .{
        .iterate = true,
    });
    defer dir.close();

    var walker = try dir.walk(alloc);
    defer walker.deinit();

    var sources = std.ArrayList([]const u8).init(alloc);
    defer sources.deinit();


    while (try walker.next()) |entry| {
        if (entry.kind == .file) {
            if (std.mem.endsWith(u8, entry.basename, options.extension)) {
                try sources.append(try alloc.dupe(u8, entry.path));
            }
        }
    }

    return .{ .inner = try sources.toOwnedSlice() };
}