{ config, pkgs, ... }:

{
  imports = [
    ../../applications/services/plex/plex.nix
  ];

  plex.enable = false;
}