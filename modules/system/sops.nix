{ inputs, ... }: {
  flake.modules.nixos.sops = { pkgs, ... }: {
    imports = [
      inputs.sops-nix.nixosModules.sops
    ];

    environment.systemPackages = with pkgs; [
      sops
      age
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
