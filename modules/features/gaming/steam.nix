{ ... }: {
  flake.modules.nixos.steam = { pkgs, ... }: {
    programs.steam = {
      enable = true;
      package = pkgs.millennium-steam;
    };
  };
}
