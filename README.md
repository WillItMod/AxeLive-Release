# AxeLive Releases

This repository contains packaged binaries for **AxeLive**.

- Current release: `v1.2`

## Highlights
- Huge: Canaan Avalon Nano 3 / Nano 3S support (fan control + work mode)
- Nano fan modes: Auto (device), Manual %, Target temperature (AxeLive-controlled)
- Nano work modes: Low / Medium / Max (Nano 3 / 3S are not tuneable beyond this)
- Device grouping: drag-and-drop mini tiles, group rename/delete, and group reordering
- Nano thermal control improvements: power-aware prediction + glitch-resistant learning for tighter temperature stability

Direct downloads (latest):
- Windows: https://github.com/WillItMod/AxeLive-Release/raw/main/windows/AxeLive_v1.2.exe
- Linux: https://github.com/WillItMod/AxeLive-Release/raw/main/linux/AxeLive_V1.2.bin

Checksums:
- https://github.com/WillItMod/AxeLive-Release/blob/main/SHA256SUMS.txt

## Windows
- Run the Windows build and use the built-in UI.
- Default UI address is `http://127.0.0.1:5210` (configurable via `AXELIVE_PORT`).

## Linux (headless)
- Run the Linux build as a headless service and open the UI from a browser.
- Default port is `5210` (configurable via `AXELIVE_PORT`).

## Licensing / Patreon
- AxeLive integrates with the hosted licensing server for Patreon tiers.
- No Patreon secrets are stored in the app; secrets live only on the licensing server.

## Safety
Read the included disclaimer before using any tuning features.
