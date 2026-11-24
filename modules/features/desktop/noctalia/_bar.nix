{
  programs.noctalia.settings.bar = {
    primary = {
      background_opacity = 0.5;

      end = [
        "clock"
        "date"
        "tray"
        "recorder"
        "phone-connect"
        "weather"
        "volume"
      ];

      center = [
        "sys-summary"
      ];

      margin_ends = 10;
      position = "top";
      radius = 15;
      scale = 1.0;

      start = [
        "notifications"
        "workspaces"
        "active_window"
      ];
    };
  };
}
