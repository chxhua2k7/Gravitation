# Gravitation

**Shake your phone to unhinge your icons!**

Gravitation is a jailbreak tweak that turns your home screen into a physics playground. Shake your device and every icon breaks free from its grid, tumbling around the screen under real gravity — tilt your phone and the icons roll with it. Shake again and they spring neatly back into place.

## Features

- **Shake to toggle** — shake your device to unhinge your icons; shake again to snap them back with a spring animation.
- **Real gravity** — icons fall and roll based on the device's actual orientation, driven by CoreMotion.
- **Collisions** — icons bounce off each other and the edges of the screen.
- **Finger gravity** — touch and drag to attract icons toward your finger, with 3D Touch pressure controlling the pull strength. Can be disabled in settings.
- **Preferences pane** — enable/disable the tweak and finger gravity from the Settings app (with its own gravity-powered header, naturally).

## Compatibility

- iOS 15 or later with a **rootless** jailbreak (Dopamine, palera1n, etc.)
- Requires MobileSubstrate/ElleKit and PreferenceLoader

## Installation

Grab the `.deb` from the [Releases](../../releases) page (or build it yourself, see below) and install it with your package manager of choice, e.g.:

```sh
dpkg -i me.kritanta.gravitation_*_iphoneos-arm64.deb
```

## Building

Requires [Theos](https://theos.dev) with a [patched SDK](https://github.com/theos/sdks) in `$THEOS/sdks` (an Xcode SDK alone won't work — the preference bundle links against the private `Preferences.framework`, which only patched SDKs provide).

```sh
export THEOS=~/theos
make package FINALPACKAGE=1
```

The rootless `.deb` (`iphoneos-arm64`, `/var/jb` prefix) lands in `packages/`.

## Project layout

| Path | Description |
|---|---|
| `Tweak.xm` | The tweak itself — hooks SpringBoard's `SBIconListView` and wires up the UIKit Dynamics physics engine |
| `gravitationprefs/` | Preference bundle shown in the Settings app |
| `control` | Debian package metadata |

## Credits

Original tweak by [Kritanta](https://github.com/KritantaDev). This fork converts the build system from DragonMake to Theos and adds rootless support.

## License

See [LICENSE](LICENSE).
