{ ... }: {
  flake.modules.nixos.fonts = { pkgs, ... }: {
    fonts.packages = with pkgs; [
      fira-sans
      nerd-fonts.fira-code
    ];
  };
}
