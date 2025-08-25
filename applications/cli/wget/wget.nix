{ config, lib, pkgs, ... }:

{
  options = {
    wget.enable = lib.mkEnableOption "enables wget";
  };

  config = lib.mkIf config.wget.enable {
    home.packages = with pkgs; [ wget ];
    # programs.wget.enable = true;
  };
}