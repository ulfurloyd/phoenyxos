{ inputs, ... }: {
  flake.modules.nixos.noctalia = {
    imports = [
      inputs.noctalia.nixosModules.default
    ];

    programs.noctalia = {
      enable = true;
      recommendedServices.enable = true;
    };
  };

  flake.modules.homeManager.noctalia = {
    imports = [
      inputs.noctalia.homeModules.default
    ];

    xdg.configFile."noctalia/templates/sequences".source = ./templates/sequences;

    programs.noctalia = {
      enable = true;

      settings = {
        audio.enable_sounds = true;
        control_center = {
          hidden_tabs = [
            "monitor"
            "screen-time"
          ];
          width = 900;
        };
        dock = {
          enabled = true;
          auto_hide = true;
          icon_size = 40;
          launcher_position = "end";
          reserve_space = false;
        };
        wallpaper.directory = "/home/wolf/Wallpapers";
        keybinds = {
          cancel = [
            "Escape"
          ];
          down = [
            "Ctrl+n"
            "Ctrl+j"
          ];
          left = [
            "Ctrl+h"
          ];
          right = [
            "Ctrl+l"
          ];
          up = [
            "Ctrl+p"
            "Ctrl+k"
          ];
          validate = [
            "Return"
          ];
        };
        location.auto_locate = true;
        notification = {
          background_opacity = 0.4;
          layer = "overlay";
        };
        osd = {
          background_opacity = 0.4;
          position = "bottom_center";
        };
        theme = {
          mode = "dark";
          source = "wallpaper";
          wallpaper_scheme = "m3-content";

          templates = {
            builtin_ids = [
              "btop"
              "emacs"
              "foot"
              "gtk3"
              "gtk4"
              "kcolorscheme"
              "qt"
              "umbriel"
            ];
            community_ids = [
              "feishin"
              "pywalfox"
              "discord"
              "gimp"
              "neovim"
              "steam"
              "fastfetch"
              "zathura"
              "zellij"
              "fcitx5"
              "bat"
              "lazygit"
              "yazi"
            ];
            user.terminal-sequences = {
              input_path = "~/.config/noctalia/templates/sequences";
              output_path = "~/.cache/terminal-sequences";
              post_hook = "tee /dev/pts/[0-9]* < ~/.cache/terminal-sequences";
            };
          };
        };
        bar = {
          primary = {
            background_opacity = 0.5;
            end = [
              "clock"
              "date"
              "tray"
              "nix-status"
              "recorder"
              "phone-connect"
              "weather"
              "volume"
            ];
            center = [
              "sys-summary"
            ];
            margin_ends = 10;
            position = "top";
            radius = 15;
            scale = 1.0;
            start = [
              "notifications"
              "workspaces"
              "umbriel-companion"
              "active_window"
            ];
          };
        };
        accessibility = {
          ui_scale = 1.1;
        };
        shell = {
          avatar_path = "/home/wolf/Pictures/pfp/Midra.jpg";
          font_family = "Fira Sans";
          umbriel_overview_type_to_launch_enabled = true;
          greeter_sync.auto_sync = true;
          polkit_agent = true;
          settings_window_translucent = true;
          telemetry_enabled = false;
          screenshot = {
            directory = "/home/wolf/Pictures/Screenshots";
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
        widget = {
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
        lockscreen_widgets = {
          enabled = true;
          widget.lockscreen-widget-0000000000000001 = {
            box_height = 144.0;
            box_width = 352.0;
            cx = 960.0;
            cy = 636.0;
            placement_height = 1080.0;
            placement_width = 1920.0;
            rotation = 0.0;
            type = "label";
            settings = {
              background_opacity = 0.0;
              background_padding = 10;
              background_radius = 12;
              shadow = true;
              title = "不死鳥";
            };
          };
        };
        plugins = {
          enabled = [
            "noctalia/translator"
            "noctalia/screen_recorder"
            "noctalia/wallhaven"
            "noctalia/kaomoji"
            "noctalia/mpvpaper"
            "noctalia/bitwarden"
            "icefish/phone-connect"
            "gustav0ar/drive-health"
            "tmelik/system-monitor"
            "noctalia/umbriel-companion"
            "mindnbytes/nix-status"
          ];
        };
        plugin_settings = {
          "noctalia/bitwarden".server_url = "https://vaultwarden.phoenyxlab.xyz";
          "mindnbytes/nix-status" = {
            flake_dir = "/home/wolf/Projects/phoenyxos";
            nixos_configuration = "nyx";
            "noctalia/wallhaven".download_dir = "/home/wolf/Projects/phoenyx-wallpapers/wallpapers";
          };
        };
      };
    };
  };
}
