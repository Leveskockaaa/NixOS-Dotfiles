{ config, lib, pkgs, ... }:

{
  options = {
    golang.enable = lib.mkEnableOption "enables golang";
  };

  config = lib.mkIf config.golang.enable {
    home.packages = with pkgs; [
      go
      delve
    ];
  };
}
