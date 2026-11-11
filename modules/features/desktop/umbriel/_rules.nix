{
  programs.umbriel.settings.window_rule = [
    {
      blur = true;
      blur_optimized = true;
    }
    {
      match.app_id = "^dev.noctalia.Noctalia$";
      default_floating = false;
    }
    {
      match.app_id = "^dev.noctalia.UmbrielSharePicker$";
      default_floating = true;
      default_floating_size_px = {
        width = 800;
        height = 600;
      };
    }
  ];

  programs.umbriel.settings.layer_rule = [
    {
      match.namespace = "^noctalia-(bar-[^\"]+|notification|dock|panel|attached-panel|osd|desktop-widget-[^\"]*)$";
      blur = true;
      blur_ignore_alpha = 0.4;
      blur_popups = true;
    }
  ];
}
