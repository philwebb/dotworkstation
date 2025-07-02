{
  description = "Workstation";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    };
    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    nix-darwin,
    ...
  }: let
    system = "aarch64-darwin";
    hostname = import ./hostname.nix;
    username = import ./username.nix;

    specialArgs =
      inputs
      // {
        inherit hostname;
        inherit username;
      };
  in {
    darwinConfigurations."${hostname}" = nix-darwin.lib.darwinSystem {
      inherit system specialArgs;
      modules = [
        ./modules/nix.nix
        ./modules/system-full.nix
        ./modules/apps.nix
      ];
    };
    darwinConfigurations.apps = nix-darwin.lib.darwinSystem {
      inherit system specialArgs;
      modules = [
        ./modules/nix.nix
        ./modules/system-none.nix
        ./modules/apps.nix
      ];
    };
    darwinConfigurations.moreapps = nix-darwin.lib.darwinSystem {
      inherit system specialArgs;
      modules = [
        ./modules/nix.nix
        ./modules/system-none.nix
        ./modules/apps.nix
        ./modules/moreapps.nix
      ];
    };
    formatter.${system} = nixpkgs.legacyPackages.${system}.alejandra;
  };
}
