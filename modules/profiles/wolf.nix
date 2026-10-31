{ self, ... }: {
  flake.homeModules.wolf = { pkgs, ... }: {
    imports = (with self.homeModules; [
      umbriel
      noctalia
      kitty
      vesktop
      nvim
      zellij
      kdeconnect
      k9s
      ssh
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
      self.modules.homeManager.git
      self.modules.homeManager.lazygit
      self.modules.homeManager.languages
      self.modules.homeManager.devenv
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
