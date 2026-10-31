{ self, ... }: {
  flake.modules.nixos.hermesConfiguration = { pkgs, ... }: {
    imports = with self.modules.nixos; [
      overlays
      hermesHardware
      noctalia-greeter
      steam
      openssh
      tailscale
      hermesTailscale
    ];

    # networking
    networking.hostName = "hermes";

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
      wget
      xwayland-satellite
    ];

    home-manager.users.wolf = {
      imports = [
        self.modules.homeManager.wolf
        self.modules.homeManager.hermesNoctalia
      ];
    };

    system.stateVersion = "26.05";
  };
}
