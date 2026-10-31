{ ... }: {
  flake.modules.nixos.nix-gc = { ... }: {
    nix.gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 14d";
    };
  };
}
