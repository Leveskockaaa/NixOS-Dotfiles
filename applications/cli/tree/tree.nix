{ config, lib, pkgs, ... }:

{
  options = {
    tree.enable = lib.mkEnableOption "enables tree";
  };

  config = lib.mkIf config.tree.enable {
    home.packages = with pkgs; [ tree ];
    # programs.tree.enable = true;
  };
}