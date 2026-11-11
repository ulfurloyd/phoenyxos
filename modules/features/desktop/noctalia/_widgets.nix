{
  programs.noctalia.settings.widget = {
    clock.format = "{:%H:%M:%S}";
    notifications.capsule = false;
    workspaces = {
      font_scale = 1.25;
      hide_when_empty = true;
      label_source = "name";
      max_label_chars = 1;
      show_labels = true;
      show_tooltip = false;
      style = "minimal";
    };
    weather.show_condition = false;
    phone-connect.type = "icefish/phone-connect:bar";
    umbriel-companion.type = "noctalia/umbriel-companion:bar";
    nix-status.type = "mindnbytes/nix-status:status";
    recorder.type = "noctalia/screen_recorder:recorder";
    sys-summary = {
      show_gpu_temperature = "off";
      show_gpu_usage = "off";
      show_gpu_vram = "off";
      show_swap = false;
      type = "tmelik/system-monitor:summary";
    };
  };
}
