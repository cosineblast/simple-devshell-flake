{
  description = "A very basic flake with devShell";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system: {
      devShells.default = import ./shell.nix { pkgs = nixpkgs.legacyPackages.${system}; };
    });
}
