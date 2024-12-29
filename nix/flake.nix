{
  description = "Workstation";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    };
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
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
        ./modules/system.nix
        ./modules/apps.nix
      ];
    };
    formatter.${system} = nixpkgs.legacyPackages.${system}.alejandra;
  };
}
