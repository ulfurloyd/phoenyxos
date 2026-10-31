{ self, ... }: {
  flake.nixosModules.systemConfiguration = { pkgs, ... }: {
    imports = (with self.nixosModules; [
      comin
      umbriel
      noctalia
      flyline
      kdeconnect
      nh
      fcitx
    ])
    ++ (with self.modules.nixos; [
      myHomeManager
      keyd
      fonts
      nix-gc
    ]);
    environment.systemPackages = with pkgs; [
      vim
      wget
      xwayland-satellite
    ];
  };
}
