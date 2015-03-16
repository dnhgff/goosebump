source $stdenv/setup

installPhase() {
    mkdir -p $out/bin
    cp goosebump $out/bin
}

genericBuild
