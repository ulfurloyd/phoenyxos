{ self, ... }: {
  flake.modules.homeManager.wolf = { pkgs, config, ... }: {
    imports = with self.modules.homeManager; [
      noctalia-desktop
      fastfetch
      bash
      zsh
      shell-aliases
      git
      lazygit
      languages
      devenv
      nvim
      emacs
      kitty
      foot
      zellij
      yazi
      tealdeer
      vesktop
      kdeconnect
      wlr-which-key
      k9s
      ssh
      mo2-lint
    ];

    home.packages = with pkgs; [
      helium
      ripgrep
      wl-clipboard
      gpu-screen-recorder
      mpv
      mpvpaper
      tre-command
      bat
      glib
      feishin
      jq
      heroic
    ];

    home.pointerCursor = {
      enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
      gtk.enable = true;
      x11.enable = true;
    };

    dconf.settings = {
      "org/gnome/desktop/interface" = {
        cursor-theme = config.home.pointerCursor.name;
        cursor-size = config.home.pointerCursor.size;
      };
    };

    programs.btop.enable = true;

    home.stateVersion = "26.05";
  };
}
