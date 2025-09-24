{ config, pkgs, ... }:

{
  users.users.leveskocka = {
    isNormalUser = true;
    initialPassword = "nixer";
    description = "leveskocka";
    shell = pkgs.fish;
    extraGroups = [ "networkmanager" "wheel" "video" "audio" ];
  };

  programs.fish = {
    enable = true;

    shellAliases = {
      eza = "eza --long --header --all";
    };
  };
}