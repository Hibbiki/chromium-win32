# Chromium for Windows x86
Stable Chromium builds for Windows 32-bit, nothing fancy.

## General build configuration
- Visual Studio 2019 v16.11.15 + SDK 10.0.20348.0
- Propertiary codecs and H.264 enabled
- Field trials disabled
- Channel unset (this allows for installing extensions outside Web Store)
- Official Build configuration

### Builds with sync
- Widevine support
- Sync enabled using Google API keys
- H.264 in WebRTC enabled

### Builds without sync
- No Widevine support
- No Google API keys (set to "no")
- H.264 in WebRTC disabled
