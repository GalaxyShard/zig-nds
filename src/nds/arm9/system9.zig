const system = @import("../system.zig");
const fifo = @import("../fifo-common.zig");

pub inline fn powerOnArm9(hardware: system.Arm9PowerOptions) void {
    system.REG_POWERCNT.* |= @bitCast(hardware);
}
pub inline fn powerOnArm7(hardware: system.Arm7PowerOptions) void {
    _ = fifo.fifoSendPmCommand(.req_on, @bitCast(hardware));
}

pub inline fn powerOffArm9(hardware: system.Arm9PowerOptions) void {
    system.REG_POWERCNT.* &= ~@as(u16, @bitCast(hardware));
}
pub inline fn powerOffArm7(hardware: system.Arm7PowerOptions) void {
    _ = fifo.fifoSendPmCommand(.req_off, @bitCast(hardware));
}

pub inline fn lcdMainOnTop() void {
    system.REG_POWERCNT.* |= 1 << 15; // set swap_lcds bit
}
pub inline fn lcdMainOnBottom() void {
    system.REG_POWERCNT.* &= ~@as(u16, 1 << 15); // unset swap_lcds bit
}
