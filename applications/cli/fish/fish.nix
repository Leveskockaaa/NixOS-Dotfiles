{ config, lib, pkgs, ... }:

{
  options = {
    fish.enable = lib.mkEnableOption "enables fish";
  };

  config = lib.mkIf config.fish.enable {
    home.packages = with pkgs; [ fish ];
  };
}