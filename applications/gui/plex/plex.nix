{ config, lib, pkgs, ... }:

{
  options = {
    plex.enable = lib.mkEnableOption "enables plex";
  };

  config = lib.mkIf config.plex.enable {
    programs.plex.enable = true;
    services.plex = {
      enable = true;
      openFirewall = true;
    };
  };
}