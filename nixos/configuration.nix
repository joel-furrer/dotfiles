{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    extraPackages = with pkgs; [ mesa mesa_drivers vulkan-tools ];
  };

  virtualisation.docker.enable = true;

  sound.enable = true;

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  time.timeZone = "Europe/Zurich";
  i18n.defaultLocale = "de_CH.UTF-8";

  services = {
    xserver = {
      videoDrivers = [ "intel" ];
      enable = true;
      xkb = {
        layout = "ch";
        variant = "de_nodeadkeys";
      };
    };
    displayManager.sddm.enable = true;
    desktopManager.plasma6.enable = true;
    printing.enable = true;
    pipewire = {
      enable = true;
      alsa = { enable = true; support32Bit = true; };
      pulse.enable = true;
    };
    openssh.enable = true;
  };

  programs = {
    hyprland.enable = false;
    hyprland.xwayland.enable = false;
    firefox.enable = true;
    kdeconnect.enable = true;
    mtr.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
    };
  };

  fonts.packages = with pkgs; [ nerdfonts ];

  console.keyMap = "sg";

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  security.rtkit.enable = true;

  users.users.joel = {
    isNormalUser = true;
    description = "Joel";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [ kate ];
  };

  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = true;
  };

  environment.systemPackages = with pkgs; [
    vim lf neofetch vscodium figlet git obsidian kitty alacritty mesa 
    libreoffice-qt hunspell nmap fastfetch plymouth greetd.greetd
    zsh neovim sl python3 pipx gcc openssh nerdfonts direnv steam steam-run 
    gparted android-tools php powershell bat lsd btop typescript
    wget spotify vlc tree lua keepassxc jsoncpp wofi librewolf
    cbonsai pipewire ghc docker
    discord networkmanager rofi tmux starship telegram-desktop kdeconnect glxinfo 
    simplescreenrecorder
  ];

  networking.firewall = {
    enable = true;
    allowedTCPPortRanges = [ { from = 1714; to = 1764; } ];
    allowedUDPPortRanges = [ { from = 1714; to = 1764; } ];
  };

  system.stateVersion = "24.05";

}

