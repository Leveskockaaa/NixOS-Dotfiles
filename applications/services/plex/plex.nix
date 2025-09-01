{ config, lib, pkgs, ... }:

{
  options = {
    plex.enable = lib.mkEnableOption "Enable Plex Media Server";
  };

  config = lib.mkIf config.plex.enable {
    services.plex = {
      enable = true;
      openFirewall = true;
    };
  };
}
