{ config, lib, pkgs, ... }:

{
  options = {
    nano.enable = lib.mkEnableOption "enables nano";
  };

  config = lib.mkIf config.nano.enable {
    home.packages = with pkgs; [ nano ];
  };
}