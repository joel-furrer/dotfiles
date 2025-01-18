{
  config,
  pkgs,
  ...
}: {
  imports = [./hardware-configuration.nix];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [mesa pkgs.mesa.drivers vulkan-tools];
  };

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  time.timeZone = "Europe/Zurich";
  i18n.defaultLocale = "de_CH.UTF-8";

  services = {
    xserver = {
      enable = true;
      videoDrivers = ["intel" "modesetting"];
    };

    desktopManager.plasma6.enable = true;

    displayManager = {
      sddm = {
        enable = true;
        wayland.enable = true;
      };
      defaultSession = "plasma";
    };
  };

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
    jack.enable = false;
  };

  systemd.services.rtkit-daemon = {enable = true;};

  services.fprintd.enable = true;

  environment.systemPackages = with pkgs; [
    emacs
    nixd
    vim
    neofetch
    alacritty
    vlc
    libreoffice
    pipewire
    plasma5Packages.kdeconnect-kde
    steam
    neovim
    rofi
    firefox
    kitty
    telegram-desktop
    fprintd
    btop
    ghc
    tty-clock
    gcc
    acpi
    xdg-utils
    lshw
    smartmontools
    toybox
    dmidecode
    inxi
    chocolate-doom
    alejandra
    nixfmt-classic
    tmux
    zsh
    git
    lsd
    bat
    fastfetch
    powershell
    figlet
    jdk
    vscodium
    cbonsai
    speedtest-cli
    tree
    jq
    discord
    starship
    hyprpaper
    dolphin
    feh
    waybar
    rtkit
    emacs
    wget
    polybar
    silicon
  ];

  users.users.joel = {
    isNormalUser = true;
    description = "Joel";
    extraGroups = ["networkmanager" "wheel"];
    packages = with pkgs; [kate];
    shell = pkgs.zsh;
  };

  programs.zsh.enable = true;
  programs.firefox.enable = true;
  programs.hyprland = {
    enable = false;
    withUWSM = true; # recommended for most users
    xwayland.enable = true; # Xwayland can be disabled.
  };

  fonts.packages = with pkgs; [nerdfonts];

  nixpkgs.config.allowUnfree = true;

  networking.firewall = {
    enable = true;
    allowedTCPPortRanges = [
      {
        from = 1714;
        to = 1764;
      }
    ];
    allowedUDPPortRanges = [
      {
        from = 1714;
        to = 1764;
      }
    ];
  };

  system.stateVersion = "24.11";
}
