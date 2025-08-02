{ config, pkgs, ... }:

{
  users.users.leveskocka = {
    isNormalUser = true;
    initialPassword = "nixer";
    description = "leveskocka";
    shell = pkgs.fish;
    extraGroups = [ "networkmanager" "wheel" "video" "audio" ];
    packages = with pkgs; [];
  };
}