{ lib, ... }: {
  flake.modules.nixos.hermesTailscale = {
    services.tailscale = {
      useRoutingFeatures = lib.mkForce "client";
      extraSetFlags = [
        "--accept-routes=true"
      ];
    };
  };
}
