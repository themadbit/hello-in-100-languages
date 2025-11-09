/*
  language: nix
  author: Eelco Dostra
  histroy and fun fact: Released in 2003, Nix is a purpose-built language. It is declarative, purely functional, lazy and dynamically typed. It used
  for package recipes, referred to as nix packages (nixpkgs). It also mainly used in the declarative configuration of NixOS, a unix-like OS.
*/

# execution: nix-build hello_nix.nix
#            ./result/bin/hello

{
  pkgs ? import <nixpkgs> { },
}:

pkgs.stdenv.mkDerivation {
  name = "hello-world";

  src = pkgs.writeText "hello.sh" ''
    #!/bin/sh
    echo "Hello, World :)"
  '';

  phases = [ "installPhase" ];

  installPhase = ''
    mkdir -p $out/bin
    cp $src $out/bin/hello
    chmod +x $out/bin/hello
  '';
}
