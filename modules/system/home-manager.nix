{ inputs, ... }: {

  flake.modules.nixos.myHomeManager = { ... }: {
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
