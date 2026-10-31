{ self, inputs, ... }: {
  flake.nixosConfigurations.nyx = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.modules.nixos; [
      nyxConfiguration
      systemConfiguration
      nvidia
      openmw
    ];
  };
}
