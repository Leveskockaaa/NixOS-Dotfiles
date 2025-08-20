{ config, lib, pkgs, ... }:

{
  options = {
    hypr.enable = lib.mkEnableOption "enables hypr ecosystem";
  };

  config = lib.mkIf config.hypr.enable {
    home.packages = with pkgs; [
      hyprland
      hyprpaper
      hyprlock
      hypridle
    ];
  };
}