{ ... }: {
  flake.modules.nixos.nh = { ... }:
    let
      user = import ../_values/user.nix;
    in
    {
    programs.nh = {
      enable = true;
      flake = user.flakeDirectory;
    };
  };
}
