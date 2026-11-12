{ ... }: {
  flake.modules.nixos.noctalia-greeter =
    { pkgs, ... }:
    let
      cursor = import ../_values/cursor.nix { inherit pkgs; };
    in
    {
      services.displayManager.noctalia-greeter = {
        enable = true;
        settings = {
          cursor.size = cursor.size;
          keyboard.layout = "us";
        };
        cursorTheme = {
          package = cursor.package;
          name = cursor.name;
        };
        passwordlessSyncUsers = [ "wolf" ];
      };
    };
}
