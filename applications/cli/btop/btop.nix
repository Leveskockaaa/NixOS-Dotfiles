{ config, lib, pkgs, ... }:

{
  options = {
    btop.enable = lib.mkEnableOption "enables btop";
  };

  config = lib.mkIf config.btop.enable {
    programs.btop.enable = true;
  };
}