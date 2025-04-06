{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixos-hardware.url = "github:nixos/nixos-hardware";
    utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, utils, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      username = "kontonkara";
      networkname = "hp";
    in
    {
      nixosConfigurations.${networkname} = nixpkgs.lib.nixosSystem {
        modules = [
          (import ./system)
          (import ./home-manager)
          inputs.home-manager.nixosModules.home-manager
        ];
        specialArgs = {
          inherit self inputs username networkname;
        };
      };
      devShells.${system} = with nixpkgs.lib;
        let 
          inherit ((builtins.head (builtins.attrValues self.nixosConfigurations))) pkgs config;
          mkShells = mapAttrs
            (_name: value: import value { inherit pkgs config; });
        in
        mkShells (builtins.listToAttrs (findModules ./devshells));
    };
}
