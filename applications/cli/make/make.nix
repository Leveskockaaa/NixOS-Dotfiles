{ config, lib, pkgs, ... }:

{
  options = {
    make.enable = lib.mkEnableOption "enables make";
  };

  config = lib.mkIf config.make.enable {
    programs.gnumake.enable = true;
  };
}