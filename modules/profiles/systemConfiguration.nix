{ self, ... }: {
  flake.nixosModules.systemConfiguration = { pkgs, ... }: {
    imports = (with self.nixosModules; [
      umbriel
      noctalia
      flyline
      kdeconnect
      nh
      fcitx
    ])
    ++ (with self.modules.nixos; [
      myHomeManager
      comin
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
