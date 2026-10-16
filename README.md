# Australis Clear

## Current status

`clear.exec` accepts no arguments and clears both the serial and framebuffer
terminals through the checked terminal operation.

`Clear.hyproj` builds `clear.exec`. The Australis OS aggregate includes
this project and installs the executable at `/System/Bin/clear.exec` in the read-only
HyFS 2 boot image. Run `clear` from the userland shell or use
`run /System/Bin/clear.exec` from KMon.

Build this checkout with:

```bash
mkdir -p build
hy build Clear.hyproj -o build/clear.exec
```

AUEX `.exec` files currently run in the checked interpreter. Native ring-3
processes remain a later milestone. The boot root is
read-only; writable application data belongs on the separate `/data` volume.
The OS-level build, supported APIs, and packaging rules are described in the
Australis OS `applications/README.md`. This README describes this project's
actual source rather than treating its filename as proof of a finished feature.
