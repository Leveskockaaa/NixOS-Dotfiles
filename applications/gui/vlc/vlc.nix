{ config, lib, pkgs, ... }:

{
  options = {
    vlc.enable = lib.mkEnableOption "enables vlc";
  };

  config = lib.mkIf config.vlc.enable {
    home.packages = with pkgs; [ vlc ];
    # programs.vlc.enable = true;
  };
}