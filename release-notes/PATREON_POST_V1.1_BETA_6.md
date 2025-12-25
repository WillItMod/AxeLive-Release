# AxeLive `V1.1_BETA_6`

## Highlights
- Nano 3 / 3S import defaults: AxeLive-controlled temp target now defaults to **65°C** (device AUTO target is shown separately).
- Reduced UI-induced load: UI prefs writes are throttled and batched, avoiding excessive `state.json` rewrites.
- State writes are safer and cheaper: backup uses atomic rename; load falls back to `.bak` if needed.
