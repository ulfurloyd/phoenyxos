{ inputs, ... }: {

  flake.modules.nixos.home-manager = { ... }: {
    imports = [
      inputs.home-manager.nixosModules.default
    ];

    home-manager = {
      backupFileExtension = "backup";
      useGlobalPkgs = true;
      useUserPackages = true;
    };
  };

}
