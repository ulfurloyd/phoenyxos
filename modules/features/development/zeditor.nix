{ ... }: {
  flake.modules.homeManager.zeditor = { pkgs, ... }: {
    programs.zed-editor = {
      enable = true;

      extraPackages = with pkgs; [
        nixd
      ];

      extensions = [
        "nix"
        "toml"
        "lua"
        "bash"
      ];

      userSettings = {
        disable_ai = true;
        terminal.shell.program = "zsh";
        vim_mode = true;
        vim = {
          use_key_equivalents = true;
          toggle_relative_line_numbers = true;
        };
        theme = {
          mode = "dark";
          dark = "Noctalia Dark";
          light = "Noctalia Light";
        };
        telemetry = {
          diagnostics = false;
          metrics = false;
        };
      };

      userKeymaps = [
        {
          context = "Workspace";
          bindings = {
            "ctrl-p" = null;
            "ctrl-n" = null;
            "ctrl-shift-g" = null;
            "\\" = "project_panel::Toggle";
          };
        }
        {
          context = "Editor && vim_mode == normal";
          bindings = {
            "space space" = "file_finder::Toggle";
            "space s g" = "pane::DeploySearch";
            "space g g" = "git_panel::Toggle";
          };
        }
      ];
    };
  };
}
