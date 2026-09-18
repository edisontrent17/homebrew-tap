# Relay SSH Homebrew tap

For Apple Silicon Macs running macOS 13 or later:

```sh
brew tap edisontrent17/tap
brew install --cask edisontrent17/tap/relay-ssh
open -a Relay
```

The `relay-ssh` command also starts the app. Update with `brew upgrade --cask edisontrent17/tap/relay-ssh`.

[Source and releases](https://github.com/edisontrent17/ssh-client). The app bundles Ghostty and OpenSSL; no Rust or Zig compiler is required.

This preview is unnotarized. macOS may require **System Settings → Privacy & Security → Open Anyway** on first launch. The cask preserves Gatekeeper and quarantine protections. Uninstalling preserves connection profiles and diagnostics.
