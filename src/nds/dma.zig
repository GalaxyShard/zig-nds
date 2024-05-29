inline fn dmaSrc(n: u2) *volatile u32 {
    return @ptrFromInt(0x040000B0 + @as(usize, n) * 12);
}
inline fn dmaDest(n: u2) *volatile u32 {
    return @ptrFromInt(0x040000B4 + @as(usize, n) * 12);
}
inline fn dmaCr(n: u2) *volatile u32 {
    return @ptrFromInt(0x040000B8 + @as(usize, n) * 12);
}

const DMA_ENABLE = 1 << 31;
const DMA_BUSY = 1 << 31;
const DMA_START_NOW = 0;

const DMA_16_BIT = 0;
const DMA_32_BIT = 1 << 26;

const DMA_COPY_WORDS = DMA_ENABLE | DMA_32_BIT | DMA_START_NOW;
const DMA_COPY_HALFWORDS = DMA_ENABLE | DMA_16_BIT | DMA_START_NOW;

pub inline fn dmaCopyWords(channel: u2, src: *const anyopaque, dest: *anyopaque, size: u32) void {
    dmaSrc(channel).* = @intFromPtr(src);
    dmaDest(channel).* = @intFromPtr(dest);
    dmaCr(channel).* = DMA_COPY_WORDS | (size >> 2);
    while ((dmaCr(channel).* & DMA_BUSY) != 0) {}
}
pub inline fn dmaCopyHalfWords(channel: u2, src: *const anyopaque, dest: *anyopaque, size: u32) void {
    dmaSrc(channel).* = @intFromPtr(src);
    dmaDest(channel).* = @intFromPtr(dest);
    dmaCr(channel).* = DMA_COPY_HALFWORDS | (size >> 1);
    while ((dmaCr(channel).* & DMA_BUSY) != 0) {}
}
pub inline fn dmaCopy(src: *const anyopaque, dest: *anyopaque, size: u32) void {
    dmaSrc(3).* = @intFromPtr(src);
    dmaDest(3).* = @intFromPtr(dest);
    dmaCr(3).* = DMA_COPY_HALFWORDS | (size >> 1);
    while ((dmaCr(3).* & DMA_BUSY) != 0) {}
}

// originally defined in arm9/cache.h
pub extern fn DC_FlushAll() void;
