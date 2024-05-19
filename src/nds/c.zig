pub usingnamespace @cImport({
    @cDefine("ARM9", {});
    // @cDefine("ARM7", {}); // TODO: This should be ARM9, but translate-c doesn't work for now
    @cInclude("stdio.h");
    // @cInclude("nds.h");
});
