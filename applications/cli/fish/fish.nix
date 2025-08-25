{ config, lib, pkgs, ... }:

{
  options = {
    fish.enable = lib.mkEnableOption "enables fish";
  };

  config = lib.mkIf config.fish.enable {
    programs.fish.enable = true;

    programs.fish.interactiveShellInit = ''
      if status is-interactive
        # Commands to run in interactive sessions can go here
        starship init fish | source
      end
    '';
  };
}
