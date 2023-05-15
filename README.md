# My Dotfiles

This repository contains my personal dotfiles. I use GNU Stow to manage my dotfiles, so you will need to install GNU Stow in order to use my dotfiles in your environment.

This repository contains my personal dotfiles. The structure of the folders in this repository matches with how the path of the configuration files should look like from the `$HOME` directory. For example, the `kitty` configuration file (`kitty.conf`) should be located at `$HOME/.config/kitty/kitty.conf` in order for kitty to use the config file. Thus, in the repository, `kitty.conf` file is located at `kitty/.config/kitty/kitty.config`. When stowing `kitty` into the targeted `$HOME` directory, it will be at the desired location of `$HOME/.config/kitty/kitty.conf`.

# Installation

To install GNU Stow, run the following command:

### Ubuntu

```
sudo apt install stow
```

### Fedora

```
sudo dnf install stow
```

# Usage

To use my dotfiles, follow these steps:

1. Clone the repository to your local machine

    ```
    git clone https://github.com/hoaannguyen07/dotfiles
    ```

2. Run the following command to create symlinks to my dotfiles in your home directory:

    ```
    stow FolderName --target=$HOME
    ```
    Replace `FolderName` with the name of the folder you want to stow. If you want to stow everything in the directory, use `*/`. Stow will automatically know to avoid README files.

3. Open your terminal and source your `.bashrc` or `.zshrc` file:

    ```
    source $HOME/.bashrc
    ```
    or
    ```
    source $HOME/.zshrc
    ```

    Your dotfiles should now be loaded in your environment.

<!-- # Troubleshooting

If you have any problems using my dotfiles, please feel free to open an issue on this repository.

I hope this helps! -->