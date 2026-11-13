{ ... }: {
  flake.modules.homeManager.git =
    { ... }:
    let
      user = import ../../_values/user.nix;
    in
    {
      programs.git = {
        enable = true;
        settings = {
          init.defaultBranch = "main";
          user = {
            name = "ulfurloyd";
            email = user.email;
          };
          github.user = "ulfurloyd";
        };
      };
    };
}
