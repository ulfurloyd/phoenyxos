{ inputs, ... }: {
  flake.nixosModules.comin = { config, ... }: {
    imports = [
      inputs.comin.nixosModules.comin
    ];

    services.comin = {
      enable = true;

      remotes = [
        {
          name = "phoenyxos";
          url = "https://github.com/ulfurloyd/phoenyxos.git";

          branches = {
            main = {
              name = "main";
              operation = "switch";
            };

            testing = {
              name = "testing-${config.networking.hostName}";
              operation = "test";
            };
          };
        }
      ];
    };
  };
}
