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

    # boot
    boot = {
      extraModprobeConfig = ''
        options snd_hda_intel power_save=0
        options snd_hda_intel power_save_controller=N
      '';
    };

    # networking
    networking.hostName = "nyx";

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
