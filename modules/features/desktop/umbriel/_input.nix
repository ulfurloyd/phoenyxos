{ config, ... }: {
  programs.umbriel.settings.input = {
    keyboard.repeat_rate = 25;
    keyboard.repeat_delay = 600;

    touchpad.tap = true;
    touchpad.natural_scroll = true;

    mouse = {
      natural_scroll = false;
      accel_profile = "flat";
      sensitivity = 0.0;
      scroll_wheel_step = 60;
    };

    cursor = {
      theme = config.home.pointerCursor.name;
      size = config.home.pointerCursor.size;
      follows_focus = true;
      hardware_cursor = true;
      hide_when_typing = false;
      hide_timeout_ms = 0;
    };

    focus.follows_mouse = true;
    focus.follows_mouse_max_scroll = 0.5;
  };
}
