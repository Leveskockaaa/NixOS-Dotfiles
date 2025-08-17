{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprland
    hyprpaper
    hyprlock
    hypridle
  ]
}