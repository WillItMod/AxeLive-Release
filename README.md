# AxeLive Releases

This repository contains packaged binaries for **AxeLive**.

- Source repo: https://github.com/WillItMod/AxeLive
- Current release: `windows/AxeLive_V1.0_ALPHA_5.exe`

## Windows

### Downloads
- `windows/AxeLive_V1.0_ALPHA_5.exe`
- (Previous) `windows/AxeLive_V1.0_ALPHA_4.exe`
- (Older) `windows/AxeLive_V1.0_ALPHA_3.exe`
- (Oldest) `windows/AxeLive_V1.0_ALPHA_2.exe`

### Verify integrity
```powershell
cd <folder-you-downloaded>
Get-FileHash .\windows\AxeLive_V1.0_ALPHA_5.exe -Algorithm SHA256
type .\SHA256SUMS.txt
```

### Run
Double-click `windows/AxeLive_V1.0_ALPHA_5.exe`.

By default AxeLive runs on `http://127.0.0.1:5210`.

Optional environment variables:
- `AXELIVE_PORT` (default `5210`)
- `AXELIVE_HOST` (default `0.0.0.0`)
- `AXELIVE_HOME` (default `%USERPROFILE%\.axelive`) - device list + settings are stored here

Example:
```powershell
$env:AXELIVE_PORT="5210"
$env:AXELIVE_HOME="$env:USERPROFILE\\.axelive"
.\windows\AxeLive_V1.0_ALPHA_5.exe
```

## Linux (headless)

### Downloads
- `linux/AxeLive_V1.0_ALPHA_5.bin`

### Verify integrity
```bash
cd <folder-you-downloaded>
sha256sum ./linux/AxeLive_V1.0_ALPHA_5.bin
cat ./SHA256SUMS.txt
```

### Run
```bash
chmod +x ./linux/AxeLive_V1.0_ALPHA_5.bin
AXELIVE_PORT=5210 AXELIVE_HOST=0.0.0.0 AXELIVE_OPEN_UI=0 ./linux/AxeLive_V1.0_ALPHA_5.bin
```

### Embedded desktop window (WebView)
This build opens AxeLive in a desktop window using `pywebview` when possible.

If the window does not appear and a browser opens instead, install **Microsoft Edge WebView2 Runtime** and try again.

## Licensing / Patreon
- AxeLive can optionally integrate with a remote licensing server for Patreon tiers.
- No Patreon secrets are stored in the app binary; secrets belong on the licensing server.

## Safety
Read `DISCLAIMER.md` before using any tuning features.
