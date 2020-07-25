let
  pkgs = import <nixpkgs> {};
  start = with pkgs; writeScriptBin "start"
    ''
    #!${stdenv.shell}
    slideshow src/main.rkt
    '';
in
with pkgs;
mkShell {
  buildInputs = [start racket];
}

