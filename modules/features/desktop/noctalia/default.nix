{ inputs, ... }: {
  flake.modules.nixos.noctalia = {
    imports = [
      inputs.noctalia.nixosModules.default
    ];

    programs.noctalia = {
      enable = true;
      recommendedServices.enable = true;
    };
  };

  flake.modules.homeManager.noctalia = {
    imports = [
      inputs.noctalia.homeModules.default

      ./_general.nix
      ./_theme.nix
      ./_bar.nix
      ./_shell.nix
      ./_widgets.nix
      ./_lockscreen.nix
      ./_plugins.nix
    ];

    xdg.configFile."noctalia/templates/sequences".source = ./templates/sequences;

    programs.noctalia = {
      enable = true;
    };
  };
}
