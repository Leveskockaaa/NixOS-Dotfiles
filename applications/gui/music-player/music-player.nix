{ config, lib, pkgs, ... }:

{
  options = {
    music-player.enable = lib.mkEnableOption "enables music-player";
  };

  config = lib.mkIf config.music-player.enable {
    home.packages = with pkgs; [
      ncmpcpp
      mpd
    ];
    programs.music-player.enable = true;
  };
}