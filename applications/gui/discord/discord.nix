{ config, lib, pkgs, ... }:

{
  options = {
    discord.enable = lib.mkEnableOption "enables discord";
  };

  config = lib.mkIf config.discord.enable {
    home.packages = with pkgs; [ discord ];
  };
}