# Chromium for Windows x86
Stable Chromium builds for Windows 32-bit, nothing fancy.

## General build configuration
- Visual Studio 2019 + SDK 10.1.18362.1
- Propertiary codecs enabled
- H.264 enabled
- Field trials disabled
- Channel unset (this allows for installing extensions outside Web Store)
- thinLTO enabled
- PGO disabled
- LLD enabled
- Official Build configuration

### Builds with sync
- Widevine support
- Sync enabled using Google API keys
- H.264 in WebRTC enabled

### Builds without sync
- No Widevine support
- No Google API keys (set to "no")
- H.264 in WebRTC disabled
