# AxeLive `V1.1_BETA_4`

## Highlights
- Nano 3 / Nano 3S fan control + learning now works in packaged builds (Windows EXE + Linux BIN), matching source behavior.
- Clean shutdown: stopping the app/service triggers a best-effort revert of Nano fans back to device AUTO control.

## Notes
- Linux build is headless (serve UI over HTTP).
- Windows build includes the embedded UI (webview).
