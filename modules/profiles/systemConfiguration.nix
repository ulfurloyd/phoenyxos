{ self, ... }: {
  flake.modules.nixos.systemConfiguration = { pkgs, ... }: {
    imports = with self.modules.nixos; [
      myHomeManager
      umbriel
      noctalia
      comin
      keyd
      fonts
      nix-gc
      kdeconnect
      fcitx
      nh
      flyline
    ];
    environment.systemPackages = with pkgs; [
      vim
      wget
      xwayland-satellite
    ];
  };
}
