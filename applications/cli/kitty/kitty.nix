{ config, lib, pkgs, ... }:

{
  options = {
    kitty.enable = lib.mkEnableOption "enables kitty";
  };

  config = lib.mkIf config.kitty.enable {
    home.packages = with pkgs; [ kitty ];
    programs.kitty.enable = true;
  };
}