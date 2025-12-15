# AxeLive Releases

This repository contains packaged binaries for **AxeLive**.

- Source repo: https://github.com/WillItMod/AxeLive
- Current release: `windows/AxeLive_V1.0_ALPHA_1.exe`

## Windows (recommended)

### Download
- `windows/AxeLive_V1.0_ALPHA_1.exe`

Verify integrity:
```powershell
cd <folder-you-downloaded>
Get-FileHash .\windows\AxeLive_V1.0_ALPHA_1.exe -Algorithm SHA256
type .\SHA256SUMS.txt
```

### Run
Double-click `windows/AxeLive_V1.0_ALPHA_1.exe`.

By default AxeLive runs on `http://127.0.0.1:5210`.

Optional environment variables:
- `AXELIVE_PORT` (default `5210`)
- `AXELIVE_HOST` (default `0.0.0.0`)
- `AXELIVE_HOME` (default `%USERPROFILE%\.axelive`) — device list + settings are stored here.

Example:
```powershell
$env:AXELIVE_PORT="5210"
$env:AXELIVE_HOME="$env:USERPROFILE\\.axelive"
.\windows\AxeLive_V1.0_ALPHA_1.exe
```

### Embedded desktop window (WebView)
This build opens AxeLive in a desktop window using `pywebview` when possible.

If the window does not appear and a browser opens instead, install **Microsoft Edge WebView2 Runtime** and try again.

## Licensing / Patreon
- AxeLive can optionally integrate with a remote licensing server for Patreon tiers.
- No Patreon secrets are stored in the app binary; secrets belong on the licensing server.

## Safety
Read `DISCLAIMER.md` before using any tuning features.

