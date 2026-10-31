{ self, ... }: {
  flake.homeModules.wolf = { pkgs, ... }: {
    imports = with self.modules.homeManager; [
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
      zellij
      yazi
      tealdeer
      vesktop
      kdeconnect
      wlr-which-key
      k9s
      ssh
      mo2-lint
      umbriel
      noctalia
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
    ];

    programs.btop.enable = true;
    programs.bash.enable = true;
    programs.git.enable = true;

    home.stateVersion = "26.05";
  };
}
