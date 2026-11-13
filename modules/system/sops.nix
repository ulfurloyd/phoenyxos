{ inputs, ... }: {
  flake.modules.nixos.sops =
    { pkgs, ... }:
    let
      user = import ../_values/user.nix;
    in
    {
      imports = [
        inputs.sops-nix.nixosModules.sops
      ];

      environment.systemPackages = with pkgs; [
        sops
        age
      ];

      sops = {
        age.keyFile = "${user.homeDirectory}/.config/sops/age/keys.txt";
        secrets = {
          github = {
            sopsFile = ../../secrets/github;
            format = "binary";
            owner = user.username;
            mode = "0400";
          };
          forge-authinfo = {
            sopsFile = ../../secrets/forge-authinfo;
            format = "binary";
            owner = user.username;
            mode = "0400";
          };
        };
      };
    };
}
