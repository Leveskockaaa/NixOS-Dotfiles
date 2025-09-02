{ config, lib, pkgs, ... }:

{
  options = {
    exa.enable = lib.mkEnableOption "Enables Exa";
  };

  config = lib.mkIf config.exa.enable {
    programs.exa.enable = true;
  };
}