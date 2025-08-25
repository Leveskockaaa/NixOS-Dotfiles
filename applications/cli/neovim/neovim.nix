{ config, lib, pkgs, ... }:

{
  options = {
    neovim.enable = lib.mkEnableOption "enables neovim";
  };

  config = lib.mkIf config.neovim.enable {
    # home.packages = with pkgs; [ neovim ];
    programs.neovim.enable = true;
  };
}