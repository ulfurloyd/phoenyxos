{ ... }: {
  flake.modules.homeManager.music = { pkgs, ... }:
    let
      tomlFormat = pkgs.formats.toml {};
    in {
      services.mpd = {
        enable = true;
        musicDirectory = "/media/music";
      };

      services.mpd-mpris.enable = true;

      home.packages = with pkgs; [
        playerctl
        mprisence
      ];

      xdg.configFile."mprisence/config.toml".source = tomlFormat.generate "mprisence-config.toml" {
        template = {
          details = "{{title}}";
          state = "{{album}} by {{artist_display}}";
          large_text = "";
        };
        player.default = {
          status_display_type = "state";
        };
      };
    };
}
