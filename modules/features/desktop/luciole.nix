{ inputs, ... }: {
  flake.modules.homeManager.luciole = { ... }: {
    imports = [
      inputs.luciole.homeModules.default
    ];

    programs.luciole = {
      enable = true;

      settings = {
        browser = {
          always_show_status_bar = true;
          always_show_tab_bar = false;
          background_opacity = 0.7;
          chooser_show_preview = true;
          expandable_folders = true;
          sidebar_tree = true;
          view_mode = "list";
        };
      };
    };
  };
}
