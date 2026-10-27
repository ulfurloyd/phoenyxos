{ inputs, ... }: {
  flake.homeModules.emacs = { pkgs, ... }: {
    imports = [
      inputs.nix-doom-emacs-unstraightened.homeModule
    ];

    programs.doom-emacs = {
      enable = true;
      emacs = pkgs.emacs-pgtk;
      tangleArgs = "--all config.org";
    };

    services.emacs = {
      enable = true;
      startWithUserSession = "graphical";
    };
  };
}
