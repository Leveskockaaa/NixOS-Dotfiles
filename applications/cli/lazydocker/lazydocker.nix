{ config, lib, pkgs, ... }:

{
  options = {
    lazydocker.enable = lib.mkEnableOption "enables lazydocker";
  };

  config = lib.mkIf config.lazydocker.enable {
    programs.lazydocker.enable = true;
  };
}