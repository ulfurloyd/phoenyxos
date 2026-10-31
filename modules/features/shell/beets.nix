{ ... }: {
  flake.modules.homeManager.beets = { pkgs, ... }:
  let
    beetsWithLyrics = pkgs.python3.pkgs.beets.override (prev: {
      pluginOverrides.lyrics.enable = true;
    });
  in {
    programs.beets = {
      enable = true;
      package = beetsWithLyrics;

      settings = {
        directory = "/home/wolf/Music";
        library = "/home/wolf/.local/share/beets/library.db";

        plugins = [ "lyrics" ];

        import = {
          move = false;
          copy = false;
          write = true;
        };

        lyrics = {
          auto = false;
          sources = [ "lrclib" ];
          synced = true;
        };
      };
    };
  };
}
