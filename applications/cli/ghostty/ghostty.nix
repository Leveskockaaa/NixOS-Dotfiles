{ config, lib, pkgs, ... }:

{
  options = {
    ghostty.enable = lib.mkEnableOption "enables ghostty";
  };

  config = lib.mkIf config.ghostty.enable {
    home.packages = with pkgs; [ ghostty ];
    programs.ghostty.enable = true;
  };
}