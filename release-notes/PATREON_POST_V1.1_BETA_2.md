# AxeLive V1.1_BETA_2 — Nano 3 / 3S is here

`V1.1_BETA_2` is the new recommended download.

This release makes **Canaan Avalon Nano 3 / Nano 3S** a first-class citizen in AxeLive:
- IP subnet scanning finds Nano units on the correct ports
- Fan control modes: Auto (device), Manual %, or Target temperature
- Work modes: Low / Medium / Max (Nano 3 / 3S are not tuneable beyond this)
- Safety behavior: on stop/shutdown AxeLive attempts to return the Nano fan back to Auto

## Safety disclaimer (read before you tune)

Any deviation from device factory stock values (including changes to fan policy, temperature targets, or work mode) may invalidate your warranty and may cause harm or permanent damage to your device.

AxeLive is provided as-is. You are responsible for the settings you apply, your PSU headroom, cooling, wiring, and overall risk tolerance.

Full disclaimer:
- https://github.com/WillItMod/AxeLive-Release/blob/main/DISCLAIMER.md

## Downloads & checksums (source of truth)

AxeLive Release Repository:
- https://github.com/WillItMod/AxeLive-Release

Current binaries:
- Windows: `windows/AxeLive_V1.1_BETA_2.exe`
  - https://github.com/WillItMod/AxeLive-Release/raw/main/windows/AxeLive_V1.1_BETA_2.exe
- Linux: `linux/AxeLive_V1.1_BETA_2.bin`
  - https://github.com/WillItMod/AxeLive-Release/raw/main/linux/AxeLive_V1.1_BETA_2.bin

Checksums (SHA256):
- https://github.com/WillItMod/AxeLive-Release/blob/main/SHA256SUMS.txt

Source repo: (private)

## How to run

### Windows

- Run: `windows/AxeLive_V1.1_BETA_2.exe`
- Open: `http://127.0.0.1:5210`

Verify checksum (PowerShell):
```powershell
cd <folder-you-downloaded>
Get-FileHash .\windows\AxeLive_V1.1_BETA_2.exe -Algorithm SHA256
type .\SHA256SUMS.txt
```

### Linux (headless)

Verify checksum:
```bash
cd <folder-you-downloaded>
sha256sum ./linux/AxeLive_V1.1_BETA_2.bin
cat ./SHA256SUMS.txt
```

Run:
```bash
chmod +x ./linux/AxeLive_V1.1_BETA_2.bin
AXELIVE_PORT=5210 AXELIVE_HOST=0.0.0.0 AXELIVE_OPEN_UI=0 ./linux/AxeLive_V1.1_BETA_2.bin
```

## Data storage

- Windows: `%USERPROFILE%\.axelive`
- Linux: `~/.axelive`

## Optional environment variables

- `AXELIVE_PORT` (default `5210`)
- `AXELIVE_HOST` (default `0.0.0.0`)
- `AXELIVE_HOME` (default `%USERPROFILE%\.axelive` on Windows, `~/.axelive` on Linux)
