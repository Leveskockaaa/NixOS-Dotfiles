{ config, lib, pkgs, ... }:

{
  options = {
    python.enable = lib.mkEnableOption "enables python";
  };

  config = lib.mkIf config.python.enable {
    home.packages = with pkgs; [ python314 ];
    # programs.python314.enable = true;
  };
}