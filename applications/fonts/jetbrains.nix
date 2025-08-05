{ config, packages, ... }:

{
  home.packages = with pkgs; [ jetbrains-mono ];
}