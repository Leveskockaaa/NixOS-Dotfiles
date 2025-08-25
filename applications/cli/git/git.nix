{ config, lib, pkgs, ... }:

{
  options = {
    git.enable = lib.mkEnableOption "enables git";
  };

  config = lib.mkIf config.git.enable {
    home.packages = with pkgs; [ git ];
    programs.git.enable = true;
  };
}