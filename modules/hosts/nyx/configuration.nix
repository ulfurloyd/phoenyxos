{ self, ... }: {
  flake.modules.nixos.nyxConfiguration = { pkgs, ... }: {
    imports = with self.modules.nixos; [
      overlays
      nyxHardware
      noctalia-greeter
      k3s
      steam
      openssh
      tailscale
      nyxTailscale
    ];

    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];

    # boot
    boot = {
      loader = {
        systemd-boot = {
          enable = true;
          configurationLimit = 10;
        };
        efi.canTouchEfiVariables = true;
      };
      kernelPackages = pkgs.linuxPackages_latest;
      extraModprobeConfig = ''
        options snd_hda_intel power_save=0
        options snd_hda_intel power_save_controller=N
      '';
    };

    # networking
    networking.hostName = "nyx";
    networking.networkmanager.enable = true;

    # locale and timezone
    time.timeZone = "Asia/Kolkata";
    i18n.defaultLocale = "en_US.UTF-8";

    i18n.extraLocaleSettings = {
      LC_ADDRESS = "en_IN";
      LC_IDENTIFICATION = "en_IN";
      LC_MEASUREMENT = "en_IN";
      LC_MONETARY = "en_IN";
      LC_NAME = "en_IN";
      LC_NUMERIC = "en_IN";
      LC_PAPER = "en_IN";
      LC_TELEPHONE = "en_IN";
      LC_TIME = "en_IN";
    };

    # kde
    services.xserver.enable = true;
    services.desktopManager.plasma6.enable = true;

    services.xserver.xkb = {
      layout = "us";
      variant = "";
    };

    # printing
    services.printing.enable = true;

    # audio
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };

    # user
    users.users."wolf" = {
      isNormalUser = true;
      description = "wolf";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
      packages = with pkgs; [
        kdePackages.kate
      ];
    };

    # packages
    programs.firefox.enable = true;
    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
      vim
      git
      wget
      xwayland-satellite
    ];

    home-manager.users.wolf = {
      imports = [
        self.modules.homeManager.wolf
        self.modules.homeManager.nyxUmbriel
        self.modules.homeManager.beets
      ];
    };

    system.stateVersion = "26.05";
  };
}
