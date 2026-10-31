{ ... }: {
  flake.modules.homeManager.languages = { ... }: {
    programs = {
      go.enable = true;
      gcc.enable = true;
    };
  };
}
