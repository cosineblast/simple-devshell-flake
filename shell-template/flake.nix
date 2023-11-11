{
  description = "A very basic flake with devShell";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        # instead of calling the mkShell function here,
        # you can use shell.nix
        # with import ./shell.nix { inherit pkgs;  }

        devShells.default =
          with pkgs; mkShell {
            nativeBuildInputs = [
              pkgs.cowsay
            ];
          };

      });
}
