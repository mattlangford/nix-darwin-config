{
  description = "System flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-25.11-darwin";
    nix-darwin.url = "github:nix-darwin/nix-darwin/nix-darwin-25.11";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
  {
    darwinConfigurations."Matts-MacBook-Air" =
      nix-darwin.lib.darwinSystem {
        specialArgs = { inherit self; };

        modules = [
          ./system.nix
          ./packages.nix
          ./python.nix
        ];
      };
  };
}
