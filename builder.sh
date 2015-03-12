source $stdenv/setup

installPhase() {
    mkdir -p $out/bin
    cp mongoose $out/bin
}

genericBuild
