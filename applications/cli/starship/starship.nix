{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ starship ];
  imports = [ ./starship-settings.nix ];
}