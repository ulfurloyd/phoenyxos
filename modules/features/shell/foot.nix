{ ... }: {
  flake.modules.homeManager.foot = { pkgs, ... }: {
    programs.foot = {
      enable = true;
      server.enable = true;

      settings = {
        main = {
          font = "FiraCode Nerd Font Mono:size=12";
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
          spawn-terminal = "Alt+Return";
          quit = "Alt+w";
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
