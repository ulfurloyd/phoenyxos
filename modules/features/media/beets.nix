{ ... }: {
  flake.modules.homeManager.beets =
    { pkgs, ... }:
    let
      beetsWithLyrics = pkgs.python3.pkgs.beets.override (prev: {
        pluginOverrides.lyrics.enable = true;
      });
      user = import ../../_values/user.nix;
    in
    {
      programs.beets = {
        enable = true;
        package = beetsWithLyrics;

        settings = {
          directory = "${user.homeDirectory}/Music";
          library = "${user.homeDirectory}/.local/share/beets/library.db";

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
