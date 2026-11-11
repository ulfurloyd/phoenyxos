{
  programs.umbriel.settings.general = {
    autostart = [
      "noctalia"
      "xwayland-satellite"
      "fcitx5 -d --replace"
    ];

    mod_key = "Super";
    xwayland = true;
    xwayland_xsettings = true;
    show_cheatsheet = false;
    focus_on_activate = false;
    honor_restored_maximize = false;
  };

  programs.umbriel.settings.environment.QT_QPA_PLATFORMTHEME = "qt6ct";

  programs.umbriel.settings.overview.zoom = 0.5;
  programs.umbriel.settings.hot_corners.top_left = {
    enabled = true;
    delay_ms = 500;
    action = "overview-open";
  };

  programs.umbriel.settings.include.optional.files = [ "noctalia.toml" ];
}
