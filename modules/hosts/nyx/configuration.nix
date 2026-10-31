{ self, ... }: {
  flake.modules.nixos.nyxConfiguration = { ... }: {
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
