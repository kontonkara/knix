{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
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
    };

}
