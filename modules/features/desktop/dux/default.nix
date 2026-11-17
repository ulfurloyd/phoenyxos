{ inputs, ... }: {
  flake.modules.homeManager.dux = {
    imports = [
      inputs.dux.homeModules.dank-material-shell
      inputs.dux.homeModules.niri
    ];

    programs.dank-material-shell = {
      enable = true;

      niri = {
        enableSpawn = true;
        enableKeybinds = false;
      };
    };
  };
}
