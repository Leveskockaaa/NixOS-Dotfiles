{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ neovim ];
}