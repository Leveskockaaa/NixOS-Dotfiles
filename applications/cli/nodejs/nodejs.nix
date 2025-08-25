{ config, lib, pkgs, ... }:

{
  options = {
    nodejs.enable = lib.mkEnableOption "enables nodejs";
  };

  config = lib.mkIf config.nodejs.enable {
    home.packages = with pkgs; [ nodejs ];
    # programs.nodejs.enable = true;
  };
}