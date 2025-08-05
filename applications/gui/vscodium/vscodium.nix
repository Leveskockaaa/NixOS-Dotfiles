{ config, pkgs, ... }:

{
  imports = [
    ./vscodium-settings.nix
  ];

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
  };
}