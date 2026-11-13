{ self, ... }: {
  flake.modules.nixos.hermesConfiguration =
    { ... }:
    let
      user = import ../../_values/user.nix;
    in
    {
      imports = with self.modules.nixos; [
        hermesHardware
        hermesTailscale
      ];

      # networking
      networking.hostName = "hermes";

      home-manager.users.${user.username} = {
        imports = [
          self.modules.homeManager.wolf
          self.modules.homeManager.hermesNoctalia
        ];
      };

      system.stateVersion = "26.05";
    };
}
