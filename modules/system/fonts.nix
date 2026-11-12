{ ... }: {
  flake.modules.nixos.fonts =
    { pkgs, ... }:
    let
      fonts = import ../_values/fonts.nix { inherit pkgs; };
    in
    {
      fonts.packages = [
        fonts.sans.package
        fonts.monospace.package
      ];
    };
}
