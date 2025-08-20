{ config, lib, pkgs, ... }:

{
  options = {
    quickshell.enable = lib.mkEnableOption "enables quickshell";
  };

  config = lib.mkIf config.quickshell.enable {
    home.packages = with pkgs; [ quickshell ];
  };
}