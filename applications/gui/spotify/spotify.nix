{ config, lib, pkgs, ... }:

{
  options = {
    spotify.enable = lib.mkEnableOption "enables spotify";
  };

  config = lib.mkIf config.spotify.enable {
    home.packages = with pkgs; [ spotify ];
  };
}