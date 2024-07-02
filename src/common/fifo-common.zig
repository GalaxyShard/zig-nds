pub const FifoChannel = enum(u32) {
    pm = 0, // channel reserved for power management
    sound = 1, // channel reserved for sound access
    system = 2, // channel reserved for system functions
    maxmod = 3, // channel reserved for the maxmod library
    dswifi = 4, // channel reserved for the dswifi library
    storage = 5, // channel reserved for DS cart, DLDI, DSi SD and NAND access  (aka sdmmc)
    firmware = 6, // channel reserved for firmware access
    camera = 7, // channel reserved for camera access
    user_01 = 8, // channel available for users
    user_02 = 9, // channel available for users
    user_03 = 10, // channel available for users
    user_04 = 11, // channel available for users
    user_05 = 12, // channel available for users
    user_06 = 13, // channel available for users
    user_07 = 14, // channel available for users
    user_08 = 15, // channel available for users
};

pub const FifoSoundCommand = enum(u32) {
    set_pan = 0 << 20,
    set_volume = 1 << 20,
    set_freq = 2 << 20,
    set_waveduty = 3 << 20,
    master_enable = 4 << 20,
    master_disable = 5 << 20,
    pause = 6 << 20,
    @"resume" = 7 << 20,
    kill = 8 << 20,
    set_master_vol = 9 << 20,
    mic_stop = 10 << 20,
    ext_set_freq = 11 << 20,
    ext_set_ratio = 12 << 20,
    mic_set_power_on = 13 << 20, // To enable it for the DSP

};

pub const FifoSystemCommand = enum(u32) {
    sys_req_touch,
    sys_req_keys,
    sys_req_time,
    sys_set_time,
    sdmmc_insert,
    sdmmc_remove
};

pub const FifoSdmmcCommand = enum(u32) {
    sd_start,
    sd_stop,
    sd_status,
    sd_size,
    nand_start,
    nand_stop,
    nand_status,
    nand_size,
    dldi_startup,
    dldi_is_inserted,
    dldi_read_sectors,
    dldi_write_sectors,
    dldi_clear_status,
    dldi_shutdown,
    slot1_card_read,
};

pub const FifoFirmwareCommand = enum(u32) {
    fw_read,
    fw_write
};

pub const FifoPmCommand = enum(u32) {
    req_on =            1<<16,
    req_off =           2<<16,
    req_led =           3<<16,
    req_sleep =         4<<16,
    req_sleep_disable = 5<<16,
    req_sleep_enable =  6<<16,
    req_battery =       7<<16,
    req_slot1_disable = 8<<16,
    req_slot1_enable =  9<<16,
};

const external = struct {
    extern fn fifoSendValue32(channel: c_int, value: u32) bool;
};
pub inline fn fifoSendValue32(channel: FifoChannel, value: u32) bool {
    return external.fifoSendValue32(@intFromEnum(channel), value);
}

pub inline fn fifoSendSoundCommand(value: FifoSoundCommand, payload: u20) bool {
    return fifoSendValue32(.sound, @intFromEnum(value) | @as(u32,payload));
}
pub inline fn fifoSendSystemCommand(value: FifoSystemCommand) bool {
    return fifoSendValue32(.system, @intFromEnum(value));
}
pub inline fn fifoSendSdmmcCommand(value: FifoSdmmcCommand) bool {
    return fifoSendValue32(.sdmmc, @intFromEnum(value));
}
pub inline fn fifoSendFirmwareCommand(value: FifoFirmwareCommand) bool {
    return fifoSendValue32(.firmware, @intFromEnum(value));
}
pub inline fn fifoSendPmCommand(value: FifoPmCommand, payload: u16) bool {
    return fifoSendValue32(.pm, @intFromEnum(value) | @as(u32,payload));
}