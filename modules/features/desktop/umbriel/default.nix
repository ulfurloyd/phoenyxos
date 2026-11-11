{ inputs, ... }: {
  flake.modules.nixos.umbriel = {
    imports = [
      inputs.umbriel.nixosModules.default
    ];

    programs.umbriel.enable = true;
  };

  flake.modules.homeManager.umbriel = { ... }: {
    imports = [
      inputs.umbriel.homeModules.default

      ./_appearance.nix
      ./_general.nix
      ./_input.nix
      ./_keybinds.nix
      ./_layout.nix
      ./_rules.nix
      ./_workspaces.nix
    ];

    programs.umbriel = {
      enable = true;
    };
  };
}
