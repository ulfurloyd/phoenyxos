{
  programs.noctalia.settings = {
    audio.enable_sounds = true;
    control_center = {
      hidden_tabs = [
        "monitor"
        "screen-time"
      ];
      width = 900;
    };
    dock = {
      enabled = true;
      auto_hide = true;
      icon_size = 40;
      launcher_position = "end";
      reserve_space = false;
    };
    wallpaper.directory = "/home/wolf/Wallpapers";
    keybinds = {
      cancel = [
        "Escape"
      ];
      down = [
        "Ctrl+n"
        "Ctrl+j"
      ];
      left = [
        "Ctrl+h"
      ];
      right = [
        "Ctrl+l"
      ];
      up = [
        "Ctrl+p"
        "Ctrl+k"
      ];
      validate = [
        "Return"
      ];
    };
    location.auto_locate = true;
    notification = {
      background_opacity = 0.4;
      layer = "overlay";
    };
    osd = {
      background_opacity = 0.4;
      position = "bottom_center";
    };
    accessibility = {
      ui_scale = 1.1;
    };
  };
}
