{ ... }: {
  flake.modules.nixos.openssh = { ... }: {
    services.openssh = {
      enable = true;
      openFirewall = true;
      settings = {
        PasswordAuthentication = false;
        KbdInteractiveAuthentication = false;
        PermitRootLogin = "no";
      };
    };
  };

  flake.modules.homeManager.ssh =
    { ... }:
    let
      user = import ../../_values/user.nix;
    in
    {
      programs.ssh = {
        enable = true;
        enableDefaultConfig = false;

        settings = {
          nyx = {
            HostName = "192.168.0.5";
            User = user.username;
          };

          hermes = {
            HostName = "192.168.0.14";
            User = user.username;
          };

          vnic = {
            HostName = "100.72.76.103";
            User = "ubuntu";
          };

          "github.com" = {
            HostName = "github.com";
            User = "git";
            IdentityFile = "/run/secrets/github";
            IdentitiesOnly = true;
          };

          "*" = {
            ForwardAgent = false;
            AddKeysToAgent = "no";
            Compression = false;
            ServerAliveInterval = 0;
            ServerAliveCountMax = 3;
            HashKnownHosts = false;
            UserKnownHostsFile = "~/.ssh/known_hosts";
            ControlMaster = "no";
            ControlPath = "~/.ssh/master-%r@%n:%p";
            ControlPersist = "no";
          };
        };
      };
    };
}
