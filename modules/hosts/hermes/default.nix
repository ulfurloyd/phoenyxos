{ self, inputs, ... }: {
  flake.nixosConfigurations.hermes = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.modules.nixos; [
      hermesConfiguration
      systemConfiguration
    ];
  };
}
