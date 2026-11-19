{ ... }: {
  flake.modules.homeManager.wlr-which-key =
    { pkgs, ... }:
    let
      fonts = import ../../_values/fonts.nix { inherit pkgs; };
      yamlFormat = pkgs.formats.yaml { };

      wlrTemplate = yamlFormat.generate "wlr-which-key-template.yaml" {
        font = "${fonts.monospace.name} 12";
        background = "{{colors.surface_container_low.default.hex}}ee";
        color = "{{colors.primary.default.hex}}";
        border = "{{colors.outline_variant.default.hex}}";
        separator = "    ";
        border_width = 2;
        corner_r = 10;
        padding = 15;
        rows_per_column = 8;
        anchor = "center";

        menu = [
          {
            key = "b";
            desc = "browser";
            cmd = "helium";
          }
          {
            key = "f";
            desc = "files";
            cmd = "luciole";
          }
          {
            key = "m";
            desc = "music";
            cmd = "feishin";
          }
        ];
      };
    in
    {
      programs.wlr-which-key.enable = true;

      xdg.configFile."noctalia/templates/wlr-which-key.yaml".source = wlrTemplate;
    };
}
