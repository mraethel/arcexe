{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    systems.url = "github:nix-systems/x86_64-linux";
    flakeUtils.url = "github:numtide/flake-utils";
    flakeUtils.inputs.systems.follows = "systems";
  };

  outputs = {
    flakeUtils,
    nixpkgs,
    ...
  }: flakeUtils.lib.eachDefaultSystem (system: let
    inherit (pkgs) callPackage;
    pkgs = import nixpkgs { inherit system; };
  in {
    devShells.arcexe = callPackage devShells/arcexe { };
  });
}
