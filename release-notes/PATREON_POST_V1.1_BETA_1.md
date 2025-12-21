# AxeLive V1.1_BETA_1 — Beta Release

Hey legends — AxeLive is now entering **beta**.

`V1.1_BETA_1` is the first beta release and the recommended download going forward.

AxeLive is the “always-on” live tuner: it monitors miners in real time and nudges frequency/voltage to keep temperature on target, with fleet controls and PSU-aware limits. AxeLive is separate from AxeBench and runs on port `5210` by default.

## ⚠️ Safety disclaimer (read before you tune)

Any deviation from device factory stock values (including changes to clock speed, core voltage, fan policy, temperature targets, PSU limits, or other tuning parameters) may invalidate your warranty and may cause harm or permanent damage to your device.

AxeLive is provided as-is. You are responsible for the settings you apply, your PSU headroom, cooling, wiring, and overall risk tolerance.

Full disclaimer:
- https://github.com/WillItMod/AxeLive-Release/blob/main/DISCLAIMER.md

## 📦 Downloads & checksums (source of truth)

AxeLive Release Repository:
- https://github.com/WillItMod/AxeLive-Release

Current binaries:
- Windows: `windows/AxeLive_V1.1_BETA_1.exe`
  - https://github.com/WillItMod/AxeLive-Release/raw/main/windows/AxeLive_V1.1_BETA_1.exe
- Linux: `linux/AxeLive_V1.1_BETA_1.bin`
  - https://github.com/WillItMod/AxeLive-Release/raw/main/linux/AxeLive_V1.1_BETA_1.bin

Checksums (SHA256):
- https://github.com/WillItMod/AxeLive-Release/blob/main/SHA256SUMS.txt

Source repo:
- https://github.com/WillItMod/AxeLive

## ▶️ How to run

### Windows

- Run: `windows/AxeLive_V1.1_BETA_1.exe`
- Open: `http://127.0.0.1:5210`

Verify checksum (PowerShell):
```powershell
cd <folder-you-downloaded>
Get-FileHash .\windows\AxeLive_V1.1_BETA_1.exe -Algorithm SHA256
type .\SHA256SUMS.txt
```

### Linux (headless)

Verify checksum:
```bash
cd <folder-you-downloaded>
sha256sum ./linux/AxeLive_V1.1_BETA_1.bin
cat ./SHA256SUMS.txt
```

Run:
```bash
chmod +x ./linux/AxeLive_V1.1_BETA_1.bin
AXELIVE_PORT=5210 AXELIVE_HOST=0.0.0.0 AXELIVE_OPEN_UI=0 ./linux/AxeLive_V1.1_BETA_1.bin
```

## 💾 Data storage

- Windows: `%USERPROFILE%\.axelive`
- Linux: `~/.axelive`

## 🔧 Optional environment variables

- `AXELIVE_PORT` (default `5210`)
- `AXELIVE_HOST` (default `0.0.0.0`)
- `AXELIVE_HOME` (default `%USERPROFILE%\.axelive` on Windows, `~/.axelive` on Linux)
