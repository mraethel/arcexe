{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    systems.url = "github:nix-systems/x86_64-linux";
    flakeUtils.url = "github:numtide/flake-utils";
    flakeUtils.inputs.systems.follows = "systems";
  };
  outputs = {
    self,
    nixpkgs,
    flakeUtils,
    ...
  }: {
    nixosModules.chromium = import nixosModules/chromium;
    overlays.arcan = {
      debug = import overlays/arcan/debug;
      trace = import overlays/arcan/trace;
    };
  } // flakeUtils.lib.eachDefaultSystem (system: {
    packages = {
      debug = let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ self.overlays.arcan.debug ];
        };
      in pkgs.arcan-wrapped;
      trace = let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ self.overlays.arcan.trace ];
        };
      in pkgs.arcan-wrapped;
    };
  });
}
