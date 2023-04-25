# Dotfiles

Linux & MacOS dotfiles

## Installation Guide

### Clone repository:

```
git clone https://github.com/hoaannguyen07/dotfiles.git
```

### `cd` into the repository you just cloned (i.e. `cd dotfiles`)

### Use the configs you want in 1 of 2 ways

***The following installation assumes that you are cloning this repo into your `$HOME` directory and keeping the same name (`dotfiles`). Read the notes section to see how to structure your commands if you didn't follow this assumption***

#### Copying:

Copy the config files/folders you want into your `~/.config/` folder.

**Note:** remember to put it in the correct subfolders of `~/.config/` (i.e. if you want to use the `hyprlandd.conf` file from the repo's `linux/.config/hypr/hyprlandd.conf`, copy it into `~/.config/hypr/`)

#### Symlink:

##### MacOS

1. If you want to `symlink` the **whole** config folder, use the following command:

```
ln -s /home/$USER/dotfiles/macos/.config/* ~/.config/
```

<details>
    <summary> Note: </summary>
If you did not follow the assumption, use the following command structure to write the command for your system

```
ln -s $DOTFILE-ABS-PATH/macos/.config/* ~/.config/
```

where `$DOTFILE-ABS-PATH` = absolute path to my dotfile repo that you just cloned.

</details>

2. If you want to `symlink` the **specific** config folder, use the following command:

```
ln -s /home/$USER/dotfiles/macos/.config/some-config ~/.config/
```

<details>
    <summary> Note: </summary>
If you did not follow the assumption, use the following command structure to write the command for your system

```
ln -s $DOTFILE-ABS-PATH/macos/.config/some-config ~/.config/
```

where `$DOTFILE-ABS-PATH` = absolute path to my dotfile repo that you just cloned.

</details>

##### Linux

1. If you want to `symlink` the **whole** config folder, use the following command:

```
ln -s /home/$USER/dotfiles/linux/.config/* ~/.config/
```
<details>
    <summary> Note </summary>
If you did not follow the assumption, use the following command structure to write the command for your system

```
ln -s $DOTFILE-ABS-PATH/linux/.config/* ~/.config/
```

where `$DOTFILE-ABS-PATH` = absolute path to my dotfile repo that you just cloned.

</details>

2. If you want to `symlink` the **specific** config folder, use the following command:

```
ln -s /home/$USER/dotfiles/linux/.config/some-config ~/.config/
```

<details>
    <summary> Note </summary>
If you did not follow the assumption, use the following command structure to write the command for your system

```
ln -s $DOTFILE-ABS-PATH/linux/.config/some-config ~/.config/
```

where `$DOTFILE-ABS-PATH` = absolute path to my dotfile repo that you just cloned.

</details>