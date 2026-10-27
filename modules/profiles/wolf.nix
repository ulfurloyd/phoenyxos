{ self, ... }: {
  flake.homeModules.wolf = { pkgs, ... }: {
    imports = with self.homeModules; [
      bash
      umbriel
      noctalia
      kitty
      vesktop
      nvim
      git
      lazygit
      zellij
      shell-aliases
      languages
      kdeconnect
      k9s
      ssh
      devenv
      yazi
      mo2-lint
      tealdeer
      emacs
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
    ];

    programs.btop.enable = true;
    programs.bash.enable = true;
    programs.git.enable = true;

    home.stateVersion = "26.05";
  };
}
