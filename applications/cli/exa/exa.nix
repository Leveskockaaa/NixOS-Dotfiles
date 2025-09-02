{ config, lib, pkgs, ... }:

{
  options = {
    exa.enable = lib.mkEnableOption "Enables Exa";
  };

  config = lib.mkIf config.exa.enable {
    # home.packages = with pkgs; [ exa ];
    programs.exa.enable = true;
  };
}