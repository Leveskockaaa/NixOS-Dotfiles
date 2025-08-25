{ config, lib, pkgs, ... }:

{
  options = {
    qbittorrent.enable = lib.mkEnableOption "enables qbittorrent";
  };

  config = lib.mkIf config.qbittorrent.enable {
    home.packages = with pkgs; [ qbittorrent ];
    programs.qbittorrent.enable = true;
  };
}