{ pkgs, ... }: {
  programs.noctalia.settings.shell =
    let
      fonts = import ../../../_values/fonts.nix { inherit pkgs; };
      user = import ../../../_values/user.nix;
    in
    {
      avatar_path = "${user.homeDirectory}/Pictures/pfp/Midra.jpg";
      font_family = fonts.sans.name;
      umbriel_overview_type_to_launch_enabled = true;
      greeter_sync.auto_sync = true;
      polkit_agent = true;
      settings_window_translucent = true;
      telemetry_enabled = false;

      screenshot = {
        directory = "${user.homeDirectory}/Pictures/Screenshots";
        filename_pattern = "%Y_%m-%d_%H:%M:%S";
        confirm_region = true;
      };

      panel = {
        session_placement = "attached";
        launcher_placement = "attached";
        clipboard_placement = "attached";
        transparency_mode = "glass";
      };

      session.actions = [
        {
          action = "lock";
          countdown_seconds = 0.0;
          enabled = true;
          shortcut = "l";
          variant = "default";
        }
        {
          action = "logout";
          countdown_seconds = 5.0;
          enabled = true;
          shortcut = "o";
          variant = "default";
        }
        {
          action = "lock_and_suspend";
          countdown_seconds = 5.0;
          enabled = true;
          shortcut = "u";
          variant = "default";
        }
        {
          action = "reboot";
          countdown_seconds = 5.0;
          enabled = true;
          shortcut = "r";
          variant = "default";
        }
        {
          action = "shutdown";
          countdown_seconds = 5.0;
          enabled = true;
          shortcut = "s";
          variant = "destructive";
        }
      ];

      window_switcher = {
        mru = true;
        style = "compact";
      };
    };
}
