{ ... }: {
  flake.modules.nixos.tmpfiles = { ... }: {
    systemd.tmpfiles.rules = [
      "d /downloads/slskd 0755 wolf users"
      "d /downloads/slskd/completed 0755 wolf users"
      "d /downloads/slskd/incomplete 0755 wolf users"
    ];
  };
}
