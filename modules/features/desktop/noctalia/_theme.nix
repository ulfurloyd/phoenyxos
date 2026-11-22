{
  programs.noctalia.settings.theme = {
    mode = "dark";
    source = "wallpaper";
    wallpaper_scheme = "m3-content";

    templates = {
      builtin_ids = [
        "btop"
        "emacs"
        "foot"
        "gtk3"
        "gtk4"
        "kcolorscheme"
        "luciole"
        "qt"
        "umbriel"
      ];
      community_ids = [
        "feishin"
        "pywalfox"
        "discord"
        "gimp"
        "neovim"
        "steam"
        "fastfetch"
        "zathura"
        "zellij"
        "fcitx5"
        "bat"
        "lazygit"
        "yazi"
      ];
      user = {
        terminal-sequences = {
          input_path = "~/.config/noctalia/templates/sequences";
          output_path = "~/.cache/terminal-sequences";
          post_hook = "tee /dev/pts/[0-9]* < ~/.cache/terminal-sequences";
        };
        wlr-which-key = {
          input_path = "~/.config/noctalia/templates/wlr-which-key.yaml";
          output_path = "~/.config/wlr-which-key/config.yaml";
        };
      };
    };
  };
}
