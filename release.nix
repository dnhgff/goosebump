{ nixpkgs ? <nixpkgs> }:
{
  goosebump = import ./default.nix { inherit nixpkgs; };
}
