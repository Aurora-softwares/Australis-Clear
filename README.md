# Australis Clear prototype

## Current status

The current source writes `args[0]` to the terminal. It does not clear the display and requires an argument.

`Clear.hyproj` builds `clear.exec`. The Australis OS aggregate includes
this project and installs the executable at `/Bin/clear.exec` in the read-only
HyFS 2 boot image. Run it by its bare name `/Bin/` through the current
recovery shell's `PATH`, or use `run /Bin/clear.exec`.

## Planned direction

Implement clearing through a public terminal operation once the external-command contract supports it; validate missing arguments before indexing.

Build this checkout with:

```bash
mkdir -p build
hy build Clear.hyproj -o build/clear.exec
```

AUEX `.exec` files currently run in the checked interpreter. Native ring-3
processes and a normal userland shell are later milestones. The boot root is
read-only; writable application data belongs on the separate `/data` volume.
The OS-level build, supported APIs, and packaging rules are described in the
Australis OS `applications/README.md`. This README describes this project's
actual source rather than treating its filename as proof of a finished feature.
