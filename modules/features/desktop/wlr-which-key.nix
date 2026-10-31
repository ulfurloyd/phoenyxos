{ ... }: {
  flake.modules.homeManager.wlr-which-key = { ... }: {
    programs.wlr-which-key = {
      enable = true;

      settings = {
        font = "Fira Code 12";
        background = "#1e1e2eee";
        color = "#cdd6f4";
        border = "#89b4fa";
        separator = " 󰅂 ";
        border_width = 2;
        corner_r = 10;
        padding = 15;
        rows_per_column = 8;
        anchor = "center";

        menu = [
          {
            key = "a";
            desc = "applications";
            submenu = [
              {
                key = "b";
                desc = "browser";
                cmd = "helium";
              }
              {
                key = "m";
                desc = "music";
                cmd = "feishin";
              }
            ];
          }
        ];
      };
    };
  };
}
