{ config, lib, pkgs, ... }:

{
  options = {
    btop.enable = lib.mkEnableOption "enables btop";
  };

  config = lib.mkIf config.btop.enable {
    home.packages = with pkgs; [ btop ];
  };
}