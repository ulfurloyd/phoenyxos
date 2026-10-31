{ self, ... }: {
  flake.modules.nixos.noctalia-desktop = {
    imports = with self.modules.nixos; [
      umbriel
      noctalia
    ];
  };

  flake.modules.homeManager.noctalia-desktop = {
    imports = with self.modules.homeManager; [
      umbriel
      noctalia
    ];
  };
}
