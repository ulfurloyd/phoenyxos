{ ... }: {
  flake.modules.nixos.nyxTailscale = {
    services.tailscale = {
      useRoutingFeatures = "server";
    };
  };
}
