# DarknessBotGarmin
A Garmin companion app for [DarknessBot](https://apps.apple.com/app/darknessbot/id1108403878).

# Build

- Install Garmin SDK Manager: https://developer.garmin.com/connect-iq/sdk/
- Install SDK 4.0.6 and all devices support in SDK Manager
- Build app for specific model (e.g. Fenix 3):
```shell
./kumitateru build --target fenix3
```
- Build app for all models: Run `build.command`
- Built app `.prg` will be available in `build` folder

# Messaging Protocol

## Incoming message to Garmin App

| Field name                  | Type       | Required | Description                                                                               |
|-----------------------------|------------|----------|-------------------------------------------------------------------------------------------|
| connected                   | Int        | *        | Connection status for transport.  1 - connected 2 - disconnected                          |
| remaining                   | Double     |          | Remainig mileage in km                                                                    |
| totalMileage                | Double     |          | Total mileage in km                                                                       |
| battery                     | Double     |          | Battery level in %                                                                        |
| current                     | Double     |          | Amperage in A                                                                             |
| singleMaxSpeed              | Double     |          | Max speed of trip in kph                                                                  |
| isImperialUnit              | Int        |          | Is enabled imperial unit on iOS app.  1 - enabled 0 - disabled                            |
| isFahrenheitUnit            | Int        |          | Is enabled Fahrenheit unit on iOS app.  1 - enabled 0 - disabled                          |
| avgSpeed                    | Double     |          | Avarage speed in kph                                                                      |
| voltage                     | Double     |          | Voltage in V                                                                              |
| distance                    | Double     |          | Trip mileage in km                                                                        |
| temperature                 | Double     |          | Temperature of mainboard in °C                                                            |
| power                       | Double     |          | Motor power in W                                                                          |
| speed                       | Double     |          | Speed in kph                                                                              |
| maxCurrent                  | Double     |          | Max amperage for connected transport in A                                                 |
| maxSpeed                    | Double     |          | Max speed for connected transport in kph                                                  |
| pwm                         | Double     |          | PWM (duty cycle) in %                                                                     |
| settings                    | Dictionary |          | Settings dictionary                                                                       |
| settings.beep               | Int        |          | Is beep option available for connected transport.  1 - availabe 0 - unavailable           |
| settings.lights             | Int        |          | Is lights option available for connected transport. 1 - availabe 0 - unavailable          |
| settings.limit              | Int        |          | Is limit speed mode option available for connected transport 1 - availabe 0 - unavailable |
| settings.lock               | Int        |          | Is lock option available for connected transport 1 - availabe 0 - unavailable             |
| settings.musicVolumeControl | Int        |          | Is music volume control option available on iOS app. 1 - availabe 0 - unavailable         |
| settings.strobe             | Int        |          | Is strobe option available for connected transport. 1 - availabe 0 - unavailable          |
| settings.torch              | Int        |          | Is torch option available for connected transport. 1 - availabe 0 - unavailable           |
| settings.tracker            | Int        |          | Is tracker option available on iOS app. 1 - availabe 0 - unavailable                      |
| settings.turnOff            | Int        |          | Is turn off option available for connected transport. 1 - availabe 0 - unavailable        |

## Outgoing message from Garmin App

| Action (String format) | Description                                         |
|------------------------|-----------------------------------------------------|
| beep                   | Beep signal on transport                            |
| torch                  | Switch torch for transport on/off                   |
| strobe                 | Switch strobe mode for transport on/off             |
| turnOff                | Turning off transport                               |
| tracker                | Switch tracker mode for iOS app on/off              |
| lock                   | Switch lock mode for transport on/off               |
| limit                  | Switch limit speed mode for transport on/off        |
| musicVolumeControl     | Switch music volume control mode for iOS app on/off |
