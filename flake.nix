{
  description = "Haskell developer environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        haskellPackages = pkgs.haskellPackages;
      in
      {
        devShells.default = pkgs.mkShell
          {
            buildInputs = with haskellPackages; [
              ghc
              cabal-install
              stack
              hlint
              ormolu
              hoogle
            ] ++ (with pkgs; [
              zlib
            ]);
            shellHook = ''
              echo "Haskell development environment loaded!"
              echo "GHC version: $(ghc --version)"
              echo "Cabal version: $(cabal --version)"
            '';
          };
      }
    );
}
