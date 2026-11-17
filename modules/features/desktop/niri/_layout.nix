{ ... }: {
  programs.niri.settings.layout = {
    gaps = 10;

    preset-column-widths = [
      { proportion = 0.333; }
      { proportion = 0.5; }
      { proportion = 0.667; }
    ];

    default-column-width = {
      proportion = 0.5;
    };

    center-focused-column = "on-overflow";
  };
}
