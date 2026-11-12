{ pkgs, ... }: {
  sans = {
    name = "Fira Sans";
    package = pkgs.fira-sans;
  };
  monospace = {
    name = "FiraCode Nerd Font Mono";
    package = pkgs.nerd-fonts.fira-code;
  };
}
