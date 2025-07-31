{ config, pkgs, lib, ...}:

let settings = import ./settings.nix;

in
{
  home.packages = with pkgs; [ git ];

  programs.git = {
    enable = true;
    userName = settings.name;
    userEmail = settings.email;
  };
}