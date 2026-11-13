{ self, ... }: {
  flake.modules.homeManager.wolf =
    { pkgs, ... }:
    let
      cursor = import ../_values/cursor.nix { inherit pkgs; };
    in
    {
      imports = with self.modules.homeManager; [
        noctalia-desktop
        phoenyx-wallpapers
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
        package = cursor.package;
        name = cursor.name;
        size = cursor.size;
        gtk.enable = true;
        x11.enable = true;
      };

      dconf.settings = {
        "org/gnome/desktop/interface" = {
          cursor-theme = cursor.name;
          cursor-size = cursor.size;
        };
      };

      programs.btop.enable = true;

      home.stateVersion = "26.05";
    };
}
