# Dotfiles

![Dotfiles](https://img.shields.io/badge/dynamic/json?color=blue&label=dotfiles&query=%24.stars&url=https://api.github.com/repos/joel-furrer/dotfiles)

## Introduction

Welcome to my dotfiles repository! This is a collection of configuration files and folders designed to create a modern, simple, yet effective development environment.

## Contents

### Files

- **.p10k.zsh**: [Powerlevel10k](https://github.com/romkatv/powerlevel10k) configuration for Zsh.
- **.zshrc**: Zsh configuration file.

### Folders

- **.config**: Contains various configurations.
  - **alacritty**: Configuration for [Alacritty](https://github.com/alacritty/alacritty) terminal emulator.
  - **i3**: Configuration for [i3](https://i3wm.org/) window manager.
  - **nvim**: Configuration for [Neovim](https://neovim.io/), mostly written in Lua.
  - **polybar**: Configuration for [Polybar](https://github.com/polybar/polybar) status bar.
  - **rofi**: Configuration for [Rofi](https://github.com/davatorium/rofi) application launcher.
  - **starship**: Configuration for [Starship](https://starship.rs/), the minimal, blazing-fast shell prompt.
  - **tmux**: Configuration for [Tmux](https://github.com/tmux/tmux) terminal multiplexer.
- **.git**: Version control using Git.
- **nixos**: Configuration for [NixOS](https://nixos.org/).
- **.oh-my-zsh**: Framework for managing Zsh configuration.

## Features

- **Shell**: Using Zsh with Oh My Zsh.
- **Prompt**: [Powerlevel10k](https://github.com/romkatv/powerlevel10k) for a sleek and informative prompt.
- **Font**: Meslo LGM Nerd Font.
- **Theme**: [Catppuccin Mocha](https://github.com/catppuccin/catppuccin).
- **Editor**: Neovim with a modern Lua-based configuration.

## Installation

1. **Clone the Repository**

    ```sh
    git clone https://github.com/joel/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ```

2. **Create Symbolic Links**

    ```sh
    ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
    ln -s ~/.dotfiles/.zshrc ~/.zshrc
    ln -s ~/.dotfiles/.config ~/.config
    ln -s ~/.dotfiles/.oh-my-zsh ~/.oh-my-zsh
    ```

3. **Install Oh My Zsh**

    ```sh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

4. **Install Powerlevel10k**

    ```sh
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
    ```

5. **Set Up Neovim**

    Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) and make sure to install the required plugins using a plugin manager like [Packer](https://github.com/wbthomason/packer.nvim).

6. **Install Fonts**

    Download and install [Meslo LGM Nerd Font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k).

## Screenshots

![Terminal](screenshots/terminal.png)
![Neovim](screenshots/nvim.png)

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Acknowledgements

- [Oh My Zsh](https://ohmyz.sh/)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Neovim](https://neovim.io/)
- [Catppuccin](https://github.com/catppuccin/catppuccin)
- [Meslo LGM Nerd Font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

---

Crafted with ❤️ by [Joel](https://github.com/joel-furrer)
