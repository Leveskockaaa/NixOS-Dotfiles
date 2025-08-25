{ config, lib, pkgs, ... }:

{
  options = {
    obsidian.enable = lib.mkEnableOption "enables obsidian";
  };

  config = lib.mkIf config.obsidian.enable {
    home.packages = with pkgs; [ obsidian ];
    programs.obsidian.enable = true;
  };
}