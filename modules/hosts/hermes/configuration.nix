{ self, ... }: {
  flake.modules.nixos.hermesConfiguration = { ... }: {
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

    home-manager.users.wolf = {
      imports = [
        self.modules.homeManager.wolf
        self.modules.homeManager.hermesNoctalia
      ];
    };

    system.stateVersion = "26.05";
  };
}
