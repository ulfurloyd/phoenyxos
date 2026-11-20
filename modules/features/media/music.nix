{ ... }: {
  flake.modules.homeManager.music = { pkgs, ... }: {
    services.mpd = {
      enable = true;
      musicDirectory = "/media/music";
    };

    services.mpd-mpris.enable = true;

    home.packages = with pkgs; [
      playerctl
      mprisence
    ];
  };
}
