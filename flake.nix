{
  description = "System flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/nix-darwin-26.05";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nixpkgs-unstable }:
  {
    darwinConfigurations."Matts-MacBook-Air" =
      nix-darwin.lib.darwinSystem {
        specialArgs = { inherit self inputs; };

        modules = [
          ./system.nix
          ./packages.nix
          ./python.nix
        ];
      };
  };
}
