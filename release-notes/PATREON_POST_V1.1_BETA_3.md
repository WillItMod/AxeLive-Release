## AxeLive V1.1_BETA_3 — Nano 3 / 3S support is here

### Huge: Canaan Avalon Nano 3 / Nano 3S
This is the first AxeLive build with dedicated Nano 3 / Nano 3S support. These devices are not tuneable like BitAxe (no frequency/voltage tuning), so AxeLive focuses on what matters for this platform:
- Work mode selection: Low / Medium / Max
- Fan control options: device auto, manual fan %, or AxeLive temperature control
- Real-time temperature governance built for Nano thermal behavior (heatsoak + delay aware)

### Improvements vs V1.1_BETA_2
- Nano temperature control is substantially more stable and less “yoyo”: control is based on learned device behavior and accounts for delay/heatsoak.
- Nano controls remember the last selected mode and values across restarts.
- Nano work mode changes apply immediately from the UI (no extra apply step).
- Stop behavior is safer and clearer: stopping control returns the device to its own automatic fan control where supported, and the UI shows a clean stopped state.
- Device grouping and layout: drag-and-drop grouping is restored, groups persist correctly, and groups can be reordered and managed reliably.
- Status presentation: when a device is stopped, the phase display shows “Stopped” instead of the last active sentiment.

### Safety note
Temperature control assumes the app remains running. If the app is stopped, the device’s own overheat protection is the final safeguard.
