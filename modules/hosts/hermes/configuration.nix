{ self, ... }: {
  flake.modules.nixos.hermesConfiguration = { ... }: {
    imports = with self.modules.nixos; [
      hermesHardware
      noctalia-greeter
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
