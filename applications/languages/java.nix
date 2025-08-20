{ config, lib, pkgs, ... }:

{
  options = {
    java.enable = lib.mkEnableOption "enables java";
  };

  config = lib.mkIf config.java.enable {
    home.packages = with pkgs; [ jdk23 ];
  };
}