{ inputs, ... }: {
  flake.modules.homeManager.phoenyx-wallpapers =
    { ... }:
    let
      user = import ../../_values/user.nix;
    in
    {
      imports = [
        inputs.phoenyx-wallpapers.homeManagerModules.default
      ];

      services.phoenyx-wallpapers = {
        enable = true;
        package = inputs.phoenyx-wallpapers.packages.x86_64-linux.default;
        directory = "${user.homeDirectory}/Wallpapers";
      };
    };
}
