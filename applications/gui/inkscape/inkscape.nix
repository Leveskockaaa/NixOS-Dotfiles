{ config, lib, pkgs, ... }:

{
  options = {
    inkscape.enable = lib.mkEnableOption "enables inkscape";
  };

  config = lib.mkIf config.inkscape.enable {
    programs.inkscape.enable = true;
  };
}