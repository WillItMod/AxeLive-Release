# AxeLive `V1.1_BETA_5`

## Highlights
- Correct version reporting in UI/API.
- Import naming improved: unique fun names without forced numeric suffixes.
- Smarter polling: devices needing correction are checked more often; stable devices are checked less often.
- STOP state now shows explicitly when AxeLive control is stopped (instead of a stale phase).
- More robust state persistence to reduce the chance of `state.json` corruption.
