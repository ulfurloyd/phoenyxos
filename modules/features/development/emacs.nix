{ inputs, ... }:
let
  doomDir = builtins.path {
    path = ./doom;
    name = "doomDir";
  };
in
{
  flake.modules.homeManager.emacs = { pkgs, ... }: {
    imports = [
      inputs.nix-doom-emacs-unstraightened.homeModule
    ];

    programs.doom-emacs = {
      enable = true;
      inherit doomDir;
      emacs = pkgs.emacs-pgtk;
      tangleArgs = "--all config.org";

      extraBinPackages = with pkgs; [
        direnv
        yaml-language-server

        # nix
        nixd
        nixfmt

        # golang
        go
        gopls

        # rust
        rustc
        cargo
        rust-analyzer
        rustfmt
        clippy
      ];
    };

    services.emacs = {
      enable = true;
      startWithUserSession = "graphical";
    };
  };
}
