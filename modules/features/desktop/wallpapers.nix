{ inputs, ... }: {
  flake.modules.homeManager.phoenyx-wallpapers = { config, ... }: {
    imports = [
      inputs.phoenyx-wallpapers.homeManagerModules.default
    ];

    services.phoenyx-wallpapers = {
      enable = true;
      package = inputs.phoenyx-wallpapers.packages.x86_64-linux.default;
      directory = "${config.home.homeDirectory}/Wallpapers";
    };
  };
}
