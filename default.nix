{
  nixpkgs ? import <nixpkgs> {}
}:
let
  inherit (nixpkgs) pkgs;
  project = with pkgs;
    stdenv.mkDerivation {
      name = "slides";
      src = lib.cleanSource ./src;
      buildInputs = [ racket ];
    };
in project

