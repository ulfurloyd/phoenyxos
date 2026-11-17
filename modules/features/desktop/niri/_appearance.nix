{ ... }: {
  programs.niri.settings = {
    layout = {
      focus-ring.enable = false;

      border = {
        enable = true;
        width = 1;
      };

      shadow = {
        enable = true;
        softness = 10;
        offset = {
          x = 2;
          y = 2;
        };
      };
    };

    window-rules = [
      {
        geometry-corner-radius = {
          top-left = 5.0;
          top-right = 5.0;
          bottom-left = 5.0;
          bottom-right = 5.0;
        };
        clip-to-geometry = true;
      }
    ];
  };
}
