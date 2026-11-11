{
  programs.noctalia.settings.plugins = {
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
  programs.noctalia.settings.plugin_settings = {
    "noctalia/bitwarden".server_url = "https://vaultwarden.phoenyxlab.xyz";
    "mindnbytes/nix-status" = {
      flake_dir = "/home/wolf/Projects/phoenyxos";
      nixos_configuration = "nyx";
      "noctalia/wallhaven".download_dir = "/home/wolf/Projects/phoenyx-wallpapers/wallpapers";
    };
  };
}
