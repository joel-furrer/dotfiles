{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Zurich";
  i18n.defaultLocale = "de_CH.UTF-8";

  services.xserver.enable = true;

  services.displayManager.sddm.enable = false;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.plasma5.enable = false;
  services.xserver.windowManager.i3.enable = true;

  services.xserver.xkb = {
    layout = "ch";
    variant = "de_nodeadkeys";
  };

  fonts.packages = with pkgs; [
    nerdfonts
  ];

  console.keyMap = "sg";

  services.printing.enable = true;

  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  users.users.joel = {
    isNormalUser = true;
    description = "Joel";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kate
    ];
  };

  programs.firefox.enable = true;
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    lf
    neofetch
    vscodium
    figlet
    git
    obsidian
    kitty
    alacritty
    zsh
    neovim
    sl
    pkgs.python3
    pipx
    gcc
    openssh
    nerdfonts
    direnv
    qemu
    wget
    ninja
    spotify
    barrier
    vlc
    tree
    lua
    keepassxc
    jsoncpp
    discord
    networkmanager
    feh
    i3status
    picom
    stow
    polybar
    killall
    rofi
    xorg.xev
    brightnessctl
    alsa-utils
    tmux
    starship
    i3-rounded
  ];

  environment.shells = [
    "/run/current-system/sw/bin/bash"
    "/run/current-system/sw/bin/sh"
    "/nix/store/rdd4pnr4x9rqc9wgbibhngv217w2xvxl-bash-interactive-5.2p26/bin/bash"
    "/nix/store/rdd4pnr4x9rqc9wgbibhngv217w2xvxl-bash-interactive-5.2p26/bin/sh"
    "/run/current-system/sw/bin/zsh"
  ];

  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  services.openssh.enable = true;

  networking.firewall = {
    enable = true;
    allowedTCPPortRanges = [
      { from = 1714; to = 1764; }
    ];
    allowedUDPPortRanges = [
      { from = 1714; to = 1764; }
    ];
  };

  programs.kdeconnect.enable = true;

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "user-with-access-to-virtualbox" ];

  system.stateVersion = "24.05";
}

