{ config, lib, pkgs, ... }:

{
  options = {
    steam.enable = lib.mkEnableOption "enables steam";
  };

  config = lib.mkIf config.steam.enable {
    home.packages = with pkgs; [ steam ];
    # programs.steam.enable = true;
  };
}