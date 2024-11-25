# zig-nds

## This project has moved to Codeberg: https://codeberg.org/GalaxyShard/zig-nds

BlocksDS ported to the Zig Build System + libnds bindings

This project is a work-in-progress and may not compile.

## Configuration

> Note: zig-nds currently relies on a patch to Zig's build system, BlocksDS/sdk, and Maxmod
>
> These can be downloaded with the following commands:
> ```sh
> git clone https://github.com/galaxyshard/zig zig-fork
> git clone https://github.com/galaxyshard/blocksds-sdk blocksds-sdk
> git clone https://github.com/galaxyshard/maxmod maxmod-fork
> ```

Download the latest unstable version of Zig ([ziglang.org/downloads](ziglang.org/downloads)) (current: 0.14.0-dev)

Clone this repository
```sh
git clone https://github.com/galaxyshard/zig-nds.git
cd zig-nds
```

Build
```sh
# Debug, no optimizations
zig build --zig-lib-dir "$PWD/../zig-fork"

# With optimizations (ReleaseFast, ReleaseSafe, ReleaseSmall)
zig build --zig-lib-dir "$PWD/../zig-fork" -Doptimize=ReleaseFast
```

Tools can be found in `$PWD/zig-out/bin`

## Resources

- [BlocksDS](https://github.com/blocksds)
- [libnds repository](https://github.com/blocksds/libnds)
- [GBATEK](https://problemkaputt.de/gbatek.htm)
