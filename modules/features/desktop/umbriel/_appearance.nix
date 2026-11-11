{
  programs.umbriel.settings.appearance = {
    prefer_no_csd = true;
    border_width = 1;
    outer_border_width = 0;
    corner_radius = 5;
    blur = {
      enabled = true;
      optimized = true;
      passes = 3;
      radius = 3;
      noise = 0.02;
      brightness = 0.9;
      contrast = 0.9;
      saturation = 1.1;
    };
    shadow = {
      enabled = true;
      softness = 10;
      offset_x = 2;
      offset_y = 2;
    };
  };
}
