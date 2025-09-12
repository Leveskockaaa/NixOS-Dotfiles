{ config, lib, pkgs, ... }:

{
  options = {
    lmms.enable = lib.mkEnableOption "enables lmms";
  };

  config = lib.mkIf config.lmms.enable {
    home.packages = with pkgs; [ lmms ];
    # programs.lmms.enable = true;
  };
}