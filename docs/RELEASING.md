# Releasing AxeLive (this repo)

This repository is the binary + checksum “source of truth” for AxeLive distribution.

## Checklist

1) Build binaries in the AxeLive source repo
- Repo: https://github.com/WillItMod/AxeLive
- Ensure the version string is correct in the source (e.g. `APP_VERSION`).
- Produce:
  - `AxeLive_<VERSION>.exe` (Windows)
  - `AxeLive_<VERSION>.bin` (Linux)

2) Copy artifacts into this repo
- `windows/AxeLive_<VERSION>.exe`
- `linux/AxeLive_<VERSION>.bin`

3) Update checksums

Compute and add lines to `SHA256SUMS.txt`:

Windows (PowerShell):
```powershell
Get-FileHash .\windows\AxeLive_<VERSION>.exe -Algorithm SHA256
```

Linux:
```bash
sha256sum ./linux/AxeLive_<VERSION>.bin
```

4) Update README
- Set “Current release” to the new version.
- Update direct download links to point at the new files.

5) Commit + push
```bash
git add -A
git commit -m "Add <VERSION> binaries"
git push
```

Optional: add a tag
```bash
git tag <VERSION>
git push origin <VERSION>
```

## Naming (Alpha/Beta)

If you promote a build from alpha to beta without changing the underlying binary, prefer shipping a new filename (e.g. `AxeLive_V1.1_BETA_1`) and leaving the original alpha artifact in place for rollback/comparison.
