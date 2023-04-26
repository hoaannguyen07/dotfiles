# Linux Dependencies

## Hyprland


| Package Name                                  | Purpose              |
| ----------------------------------------------- | ---------------------- |
| [Hyprland](https://hyprland.org/)             | Window Manager       |
| [Rofi-Wayland](https://github.com/lbonn/rofi) | Application Launcher |
| [Eww](https://github.com/elkowar/eww)         | Statusbar            |

## Installation

### Fedora

*Note: this installation guide was done on Fedora Workstation 37 with kernel version 6.0.7-301.*

#### Hyprland

***Note**: Add a `-y` to commands to automatically answer "yes" to every prompt.*

We will be using `bzaidanz`'s copr to install Hyprland (document can be found [here](https://copr.fedorainfracloud.org/coprs/bzaidan/Hyprland/)).

***Note:** `bzaidans`'s copr is only tested on Fedora Workstation 37 so I don't know if it works on other versions.*

First, enable the copr by

```
sudo dnf copr enable bzaidan/Hyprland
```

Then, install hyprland with

```
sudo dnf install hyprland
```

*Optional: You can disable the copr afterwards with*

```
sudo dnf copr disable bzaidan/Hyprland
```

**Extra:** You can try running an instance of hyprland without actually being in hyprland using the `Hyprland` command. Ensure that you are currently using the `wayland` display server when running this command. If you are using `x11`, this command can cause errors (untested). Use the `echo $XDG_SESSION_TYPE` command to find out if you are using `wayland` or `x11`.

#### Eww

**Prerequisite**: Have `rust` and `cargo` installed.

Install `rust` and `cargo` using the command (referencing [this](https://doc.rust-lang.org/cargo/getting-started/installation.html) installation documentation)

```
curl https://sh.rustup.rs -sSf | sh
```

Refer to [this](https://elkowar.github.io/eww/) documentation as the installation guide for Eww. We will be using the `wayland` feature of Eww because `hyprland` runs on `wayland`.

There will be an error once you attempt the command

```
cargo build --release --no-default-features --features=wayland
```

Just read through the missing packages one by one and search them up in the package manager using

```
dnf search package-name
```

and install the missing packages (unsure if need the devel version but I don't think so) using

```
sudo dnf install package-name
```

Then, run the `cargo build` command again.

Remember to make your `./eww` file an executable after building.

#### Rofi-Wayland

This application is in the `dnf` package manager so you can just run

```
sudo dnf install rofi-wayland
```
