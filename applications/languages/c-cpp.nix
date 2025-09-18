{ config, lib, pkgs, ... }:

{
  options = {
    cpp.enable = lib.mkEnableOption "enables cpp development kit";
  };

  config = lib.mkIf config.cpp.enable {
    home.packages = with pkgs; [
      gcc
      gnumake
    ];
  };
}