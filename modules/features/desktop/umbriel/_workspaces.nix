let
  workspaces = [
    "一"
    "二"
    "三"
    "四"
    "五"
    "六"
    "七"
    "八"
    "九"
  ];
in
{
  programs.umbriel.settings.output = {
    "eDP-1".workspaces = workspaces;
    "DP-1".workspaces = workspaces;
    "HDMI-A-1".workspaces = workspaces;
  };
  programs.umbriel.settings.workspaces.back_and_forth = true;
}
