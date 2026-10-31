{ inputs, ... }: {
  flake.modules.nixos.flyline = {
    imports = [
      inputs.flyline.nixosModules.default
    ];

    programs.flyline.enable = true;
  };
}
