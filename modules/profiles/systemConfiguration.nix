{ self, ... }: {
  flake.nixosModules.systemConfiguration = { pkgs, ... }: {
    imports = (with self.nixosModules; [
      flyline
      nh
    ])
    ++ (with self.modules.nixos; [
      myHomeManager
      umbriel
      noctalia
      comin
      keyd
      fonts
      nix-gc
      kdeconnect
      fcitx
    ]);
    environment.systemPackages = with pkgs; [
      vim
      wget
      xwayland-satellite
    ];
  };
}
