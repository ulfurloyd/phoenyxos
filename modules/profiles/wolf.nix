{ self, ... }: {
  flake.homeModules.wolf = { pkgs, ... }: {
    imports = (with self.homeModules; [
      umbriel
      noctalia
      kitty
      vesktop
      nvim
      git
      lazygit
      zellij
      languages
      kdeconnect
      k9s
      ssh
      devenv
      yazi
      mo2-lint
      tealdeer
      emacs
      wlr-which-key
    ])
    ++ [
      self.modules.homeManager.fastfetch
      self.modules.homeManager.bash
      self.modules.homeManager.zsh
      self.modules.homeManager.shell-aliases
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
