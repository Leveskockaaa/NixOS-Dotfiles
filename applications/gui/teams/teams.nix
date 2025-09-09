{ config, lib, pkgs, ... }:

{
  options = {
    teams.enable = lib.mkEnableOption "enables teams";
  };

  config = lib.mkIf config.teams.enable {
    programs.teams.enable = true;
  };
}