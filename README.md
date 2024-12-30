# Dotfiles

This repository contains my personal dotfiles for configuring various tools and environments on my system. The dotfiles are intended to help set up a consistent and customized environment for development and everyday use. Here's a breakdown of the folder structure and contents:

## Folder Structure

### `.config`
Contains configuration files for various applications:
- **alacritty**: Configurations for the Alacritty terminal emulator.
  - `alacritty.toml`: Main configuration for Alacritty.
  - `catppuccin-mocha.toml`: Theme configuration for the Catppuccin Mocha color scheme.
  
- **i3**: Configuration for the i3 window manager.
  - `config`: The main i3 configuration file.
  
- **nvim**: Configuration for Neovim, an extensible text editor.
  - `init.lua`: Main initialization file for Neovim.
  - `lazy-lock.json`: File used by lazy.nvim for plugin management.
  - `lua/`: Directory containing custom Lua scripts for Neovim plugins and settings.
    - `.luarc.json`: Lua runtime configuration.
    - `plugins/`: Directory for individual plugin configurations.
    - `plugins.lua`: Main Lua script for managing plugins.
    - `vim-options.lua`: Vim options for configuring Neovim.
  
- **polybar**: Configuration for Polybar, a status bar for X11.
  - `config.ini`: Main Polybar configuration.
  - `launch_polybar.sh`: Script to launch Polybar.
  
- **rofi**: Configuration for Rofi, a window switcher and application launcher.
  - `catppuccin-mocha.rasi`: Theme file for Rofi using the Catppuccin Mocha color scheme.
  - `config.rasi`: Main Rofi configuration.
  
- **starship**: Configuration for the Starship prompt.
  - `starship.toml`: Configuration for customizing the Starship prompt.
  
- **tmux**: Configuration for tmux, a terminal multiplexer.
  - `.tmux.conf`: Main tmux configuration file.

### `.git`
Contains Git configuration and data.
- **config**: Global Git configuration file.
- **hooks/**: Directory containing Git hook samples (e.g., `pre-commit`, `commit-msg`, etc.).
- **index**, **logs**, **objects**, etc.: Git internal data structures.

### `nixos`
- **configuration.nix**: Configuration file for setting up NixOS, a Linux distribution.

### `.oh-my-zsh`
Contains Zsh configurations for **Oh My Zsh**, a framework for managing Zsh configurations.

### `.p10k.zsh`
Configuration file for the Powerlevel10k Zsh theme, which enhances the terminal prompt.

### `.zshrc`
Configuration file for **Zsh**, which is the shell I use. It includes settings for aliases, environment variables, and shell options.

## How to Use

### 1. Install Necessary Tools
Before using these dotfiles, ensure that you have the following tools installed:
- Alacritty
- i3 (or another window manager if you prefer)
- Neovim
- Polybar
- Rofi
- Starship
- tmux
- Git
- NixOS (if you're using it)
