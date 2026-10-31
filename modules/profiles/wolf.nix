{ self, ... }: {
  flake.homeModules.wolf = { pkgs, ... }: {
    imports = (with self.homeModules; [
      umbriel
      noctalia
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
      self.modules.homeManager.nvim
      self.modules.homeManager.emacs
      self.modules.homeManager.kitty
      self.modules.homeManager.zellij
      self.modules.homeManager.yazi
      self.modules.homeManager.tealdeer
      self.modules.homeManager.vesktop
      self.modules.homeManager.kdeconnect
      self.modules.homeManager.wlr-which-key
      self.modules.homeManager.k9s
      self.modules.homeManager.ssh
      self.modules.homeManager.mo2-lint
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
