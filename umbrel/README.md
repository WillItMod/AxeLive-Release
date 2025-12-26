# Umbrel apps

This folder contains two standalone Umbrel app packages:

- AxeLive
- AxeBench

## Notes

- These app packages expect Docker images to be published for the tags referenced in their compose configuration.
- For best reliability, publish multi-arch images (amd64 + arm64) and pin to an immutable digest.
- Persist app state to the provided data volume so updates don’t reset devices, groups, or learned control state.
