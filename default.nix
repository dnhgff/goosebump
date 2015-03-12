{ nixpkgs ? <nixpkgs> }:
let
  pkgs = import nixpkgs {};
  filter = name: type: let baseName = baseNameOf (toString name); in
    baseName != "result";

  rev = "057c2d4b42de89c70dd48b92ad7ef1c09b54ef53";
  mongoose = pkgs.fetchFromGitHub {
    inherit rev;
    sha256 = "94ba333aad741f330db71563d670b62e10fdf7d0985bd88edcc2b7fa5e100bc7";
    owner = "cesanta";
    repo = "mongoose";
  };
  src = builtins.filterSource filter ./. ;
  mergedSources = pkgs.buildEnv {
    name = "mergedSources";
    paths = [ src mongoose ];
  };
in pkgs.stdenv.mkDerivation rec {
  src = mergedSources;
  name = "mongoose-server-${rev}";
  buildInputs = [ pkgs.clang ];
  builder = ./builder.sh;
}
