{ config, pkgs, inputs, ...}:

{
  imports = [
    ../../applications/cli/git/git.nix
    ../../applications/cli/btop.nix

    ../../applications/gui/steam.nix
  ];
}