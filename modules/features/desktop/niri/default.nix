{ inputs, ... }: {
  flake.modules.nixos.niri = { pkgs, ... }: {
    imports = [
      inputs.niri.nixosModules.niri
    ];

    programs.niri = {
      enable = true;
      package = pkgs.niri-unstable;
    };
  };

  flake.modules.homeManager.niri = { ... }: {
    imports = [
      ./_general.nix
      ./_appearance.nix
      ./_input.nix
    ];
  };
}
