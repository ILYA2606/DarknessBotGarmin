# DarknessBotGarmin
A Garmin companion app for [DarknessBot](https://apps.apple.com/app/darknessbot/id1108403878).

## Build

- Install Garmin SDK Manager: https://developer.garmin.com/connect-iq/sdk/
- Install SDK 4.0.6 and all devices support in SDK Manager
- Build app for specific model (e.g. Fenix 3):
```shell
./kumitateru build --target fenix3
```
- Build app for all models: Run `build.command`
- Built app `.prg`s will be available in `build` folder
