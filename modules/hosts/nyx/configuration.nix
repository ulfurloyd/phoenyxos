{ self, ... }: {
  flake.modules.nixos.nyxConfiguration =
    { ... }:
    let
      user = import ../../_values/user.nix;
    in
    {
      imports = with self.modules.nixos; [
        nyxHardware
        k3s
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

      home-manager.users.${user.username} = {
        imports = [
          self.modules.homeManager.wolf
          self.modules.homeManager.nyxUmbriel
          self.modules.homeManager.beets
        ];
      };

      system.stateVersion = "26.05";
    };
}
