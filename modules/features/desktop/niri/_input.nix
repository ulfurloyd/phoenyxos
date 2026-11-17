{ ... }: {
  programs.niri.settings.input = {
    keyboard = {
      repeat-rate = 25;
      repeat-delay = 600;
    };

    touchpad = {
      tap = true;
      natural-scroll = true;
    };

    mouse = {
      natural-scroll = false;
      accel-profile = "flat";
      accel-speed = 0.0;
    };

    focus-follows-mouse = {
      enable = true;
      max-scroll-amount = "50%";
    };
  };
}
