{ config, lib, pkgs, ... }:

{
  options = {
    sayonara.enable = lib.mkEnableOption "enables sayonara";
  };

  config = lib.mkIf config.sayonara.enable {
    home.packages = with pkgs; [ sayonara ];
    programs.sayonara.enable = true;
  };
}