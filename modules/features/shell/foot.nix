{ ... }: {
  flake.modules.homeManager.foot =
    { pkgs, ... }:
    let
      fonts = import ../../_values/fonts.nix { inherit pkgs; };
    in
    {
      programs.foot = {
        enable = true;
        server.enable = true;

        settings = {
          main = {
            font = "${fonts.monospace.name}:size=12";
            include = "~/.config/foot/themes/noctalia";
          };
          bell = {
            system = "no";
          };
          colors-dark = {
            alpha = 0.4;
            alpha-mode = "all";
          };
          key-bindings = {
            scrollback-up-line = "Control+Shift+k";
            scrollback-down-line = "Control+Shift+j";
          };
        };
      };

      home.packages = [
        (pkgs.writeShellScriptBin "foot-reload" ''
          systemctl --user stop foot-server.socket foot-server.service
          systemctl --user start foot-server.socket
        '')
      ];
    };
}
