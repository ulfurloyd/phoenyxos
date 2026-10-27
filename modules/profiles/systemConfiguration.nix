{ self, ... }: {
  flake.nixosModules.systemConfiguration = { pkgs, ... }: {
    imports = with self.nixosModules; [
      myHomeManager
      comin
      umbriel
      noctalia
      keyd
      flyline
      fonts
      kdeconnect
      nh
      nix-gc
    ];
    environment.systemPackages = with pkgs; [
      vim
      wget
      xwayland-satellite
    ];
  };
}
