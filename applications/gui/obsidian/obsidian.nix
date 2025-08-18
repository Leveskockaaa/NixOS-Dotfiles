{ config, pkgs, ... }:

{
  imports = [
    ./obsidian-settings.nix
  ]

  programs.obsidian = {
    enable = true;
    package = pkgs.obsidian;
  }
}