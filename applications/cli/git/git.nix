{ config, pkgs, lib, ...}:

let

in
{
  home.packages = with pkgs; [ git ];

  # programs.git = {
  #   enable = true;
  #   userName = settings.name;
  #   userEmail = settings.email;
  # };
}