{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    comin = {
      url = "github:nlewo/comin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:vic/import-tree";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia.url = "github:noctalia-dev/noctalia";
    umbriel.url = "github:noctalia-dev/umbriel";
    phoenyx-wallpapers.url = "github:ulfurloyd/phoenyx-wallpapers";
    helium = {
      url = "github:schembriaiden/helium-browser-nix-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flyline.url = "github:HalFrgrd/flyline";

    nvf.url = "github:notashelf/nvf";
    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-doom-emacs-unstraightened = {
      url = "github:marienz/nix-doom-emacs-unstraightened";
      inputs = {
        doomdir.url = "./doom";
        nixpkgs.follows = "nixpkgs";
      };
    };
    millennium.url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";
    openmw-nix = {
      url = "git+https://codeberg.org/PopeRigby/openmw-nix.git";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    aagl = {
      url = "github:ezKEa/aagl-gtk-on-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    mo2-lint.url = "github:ulfurloyd/mo2-lint-flake";
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        (inputs.import-tree ./modules)
      ];

      perSystem = { pkgs, ... }: {
        formatter = pkgs.nixfmt-tree;
      };

      debug = true;
    };

  nixConfig = {
    extra-substituters = [
      "https://noctalia.cachix.org"
      "https://ezkea.cachix.org"
    ];
    extra-trusted-public-keys = [
      "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
      "ezkea.cachix.org-1:ioBmUbJTZIKsHmWWXPe1FSFbeVe+afhfgqgTSNd34eI="
    ];
    trusted-users = [
      "root"
      "@wheel"
    ];
  };
}
