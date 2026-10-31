{ inputs, ... }: {
  flake.modules.homeManager.emacs = { pkgs, ... }: {
    imports = [
      inputs.nix-doom-emacs-unstraightened.homeModule
    ];

    programs.doom-emacs = {
      enable = true;
      emacs = pkgs.emacs-pgtk;
      tangleArgs = "--all config.org";

      extraBinPackages = with pkgs; [
        nixd
        nixfmt
        yaml-language-server
      ];
    };

    services.emacs = {
      enable = true;
      startWithUserSession = "graphical";
    };
  };
}
