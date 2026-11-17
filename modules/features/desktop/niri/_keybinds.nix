{ ... }: {
  programs.niri.settings.binds = {
    # Applications
    "Mod+Return".action.spawn = "footclient";
    "Mod+E".action.spawn = "emacsclient --create-frame";
    "Mod+B".action.spawn = "wlr-which-key";

    # Window management
    "Mod+T".action.toggle-window-floating = [];
    "Mod+R".action.switch-preset-column-width = [];
    "Mod+F".action.maximize-column = [];
    "Mod+M".action.fullscreen-window = [];
    "Mod+W".action.close-window = [];
    "Mod+Shift+Slash".action.show-hotkey-overlay = [];

    # Focus
    "Mod+H".action.focus-column-left = [];
    "Mod+J".action.focus-window-down = [];
    "Mod+K".action.focus-window-up = [];
    "Mod+L".action.focus-column-right = [];

    # Move columns
    "Mod+Shift+H".action.move-column-left = [];
    "Mod+Shift+L".action.move-column-right = [];

    # Workspaces
    "Mod+1".action.focus-workspace = 1;
    "Mod+2".action.focus-workspace = 2;
    "Mod+3".action.focus-workspace = 3;
    "Mod+4".action.focus-workspace = 4;
    "Mod+5".action.focus-workspace = 5;
    "Mod+6".action.focus-workspace = 6;
    "Mod+7".action.focus-workspace = 7;
    "Mod+8".action.focus-workspace = 8;
    "Mod+9".action.focus-workspace = 9;

    "Mod+U".action.focus-workspace-down = [];
    "Mod+I".action.focus-workspace-up = [];

    "Mod+Shift+1".action.move-window-to-workspace = 1;
    "Mod+Shift+2".action.move-window-to-workspace = 2;
    "Mod+Shift+3".action.move-window-to-workspace = 3;
    "Mod+Shift+4".action.move-window-to-workspace = 4;
    "Mod+Shift+5".action.move-window-to-workspace = 5;
    "Mod+Shift+6".action.move-window-to-workspace = 6;
    "Mod+Shift+7".action.move-window-to-workspace = 7;
    "Mod+Shift+8".action.move-window-to-workspace = 8;
    "Mod+Shift+9".action.move-window-to-workspace = 9;

    "Mod+Shift+U".action.move-window-to-workspace-down = [];
    "Mod+Shift+I".action.move-window-to-workspace-up = [];
    # 
    # Output navigation
    "Mod+Ctrl+H".action.focus-monitor-left = [];
    "Mod+Ctrl+L".action.focus-monitor-right = [];

    "Mod+Ctrl+Shift+H".action.move-window-to-monitor-left = [];
    "Mod+Ctrl+Shift+L".action.move-window-to-monitor-right = [];

    # Window positioning
    "Mod+C".action.center-column = [];
    "Mod+BracketLeft".action.consume-or-expel-window-left = [];
    "Mod+BracketRight".action.consume-or-expel-window-right = [];

    # Workspace positioning
    "Mod+Ctrl+I".action.move-workspace-up = [];
    "Mod+Ctrl+U".action.move-workspace-down = [];
  };
}
