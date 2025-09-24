{ config, lib, pkgs, ... }:

{
  options = {
    eza.enable = lib.mkEnableOption "Enables Eza";
  };

  config = lib.mkIf config.eza.enable {
    programs.eza.enable = true;
  };
}