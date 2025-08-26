{ config, lib, pkgs, ... }:

{
  options = {
    easytag.enable = lib.mkEnableOption "enables easytag";
  };

  config = lib.mkIf config.easytag.enable {
    home.packages = with pkgs; [ easytag ];
    programs.easytag.enable = true;
  };
}