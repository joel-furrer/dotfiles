{ config, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];

  boot.loader = {
    systemd-boot.enable = true;
    #systemd-boot.allow-recovery = true;
    efi.canTouchEfiVariables = true;
  };

  #hardware.opengl.enable = true;

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    extraPackages = with pkgs; [
      mesa
      mesa_drivers
      libGL
      libvdpau
      libvdpau
      vulkan-tools
    ];
  };

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
      desktopManager.plasma5.enable = true;
      windowManager = {
        i3 = {
	  enable = false;
	};
        awesome = {
          enable = false;
          luaModules = with pkgs.luaPackages; [
            luarocks
            luadbi-mysql
          ];
        };
      };
      xkb = {
        layout = "ch";
        variant = "de_nodeadkeys";
      };
    };
    displayManager = {
      sddm.enable = true;
    };
    printing.enable = true;
    pipewire = {
      enable = true;
      alsa = { enable = true; support32Bit = true; };
      pulse.enable = true;
    };
    openssh.enable = true;
  };

  fonts.packages = with pkgs; [ nerdfonts ];

  console.keyMap = "sg";

  hardware = {
    pulseaudio.enable = false;
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
  };


  security.rtkit.enable = true;

  users = {
    users.joel = {
      isNormalUser = true;
      description = "Joel";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [ kate ];
    };
  };

  programs = {
    firefox.enable = true;
    kdeconnect.enable = true;
    mtr.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowBroken = true;

  environment = {
    systemPackages = with pkgs; [
      vim lf neofetch vscodium figlet git obsidian kitty alacritty mesa libreoffice-qt hunspell nmap
      zsh neovim sl pkgs.python3 pipx gcc openssh nerdfonts direnv steam steam-run gparted android-tools
      wget ninja spotify vlc tree lua keepassxc jsoncpp zed-editor inkscape libglvnd logisim-evolution
      discord networkmanager rofi tmux starship telegram-desktop kdeconnect glxinfo simplescreenrecorder
    ];
    shells = [
      "/run/current-system/sw/bin/bash"
      "/run/current-system/sw/bin/sh"
      "/nix/store/rdd4pnr4x9rqc9wgbibhngv217w2xvxl-bash-interactive-5.2p26/bin/bash"
      "/nix/store/rdd4pnr4x9rqc9wgbibhngv217w2xvxl-bash-interactive-5.2p26/bin/sh"
      "/run/current-system/sw/bin/zsh"
    ];
  };

  networking.firewall = {
    enable = true;
    allowedTCPPortRanges = [ { from = 1714; to = 1764; } ];
    allowedUDPPortRanges = [ { from = 1714; to = 1764; } ];
  };

  fileSystems."/mnt/truenas" = {
    device = "//192.168.100.101/Daten"; # „Daten“ ist der SMB-Freigabename
    fsType = "cifs";
    options = [ "root" "020207" ];
  };


  system.stateVersion = "24.05";
}
