{ ... }: {
  programs.niri.settings = {
    prefer-no-csd = true;

    spawn-at-startup = [
      { command = [ "fcitx5" "-d" "--replace" ]; }
    ];

    environment = {
      QT_QPA_PLATFORMTHEME = "qt6ct";
    };
  };
}
