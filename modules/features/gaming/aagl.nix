{ inputs, ... }: {
  flake.modules.nixos.aagl = { ... }: {
    imports = [
      inputs.aagl.nixosModules.default
    ];

    programs.anime-game-launcher.enable = true;
  };
}
