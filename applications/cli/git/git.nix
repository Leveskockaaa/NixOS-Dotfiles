{ config, pkgs, lib, ...}:

let
  homeDirectory = builtins.getEnv "HOME";
  settings = import (homeDirectory + "/.config/nixos-private/git-settings.nix");

in
{
  home.packages = with pkgs; [ git ];

  programs.git = {
    enable = true;
    userName = settings.name;
    userEmail = settings.email;
  };
}