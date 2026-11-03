{ inputs, ... }: {
  flake.modules.nixos.sops = { ... }: {
    imports = [
      inputs.sops-nix.nixosModules.sops
    ];

    sops = {
      age.keyFile = "/home/wolf/.config/sops/age/keys.txt";
      secrets.github = {
        sopsFile = ../../secrets/github;
        format = "binary";
        owner = "wolf";
        mode = "0400";
      };
    };
  };
}
