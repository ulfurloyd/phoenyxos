{ ... }: {
  flake.modules.homeManager.tealdeer = { ... }: {
    programs.tealdeer = {
      enable = true;
      settings = {
        display = {
          compact = false;
          use_pager = false;
        };
        updates = {
          auto_update = false;
        };
      };
    };
  };
}
