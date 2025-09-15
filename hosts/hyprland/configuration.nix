{ config, pkgs, ... }:

{
  imports = [
    ./audio.nix
    ./hardware-configuration.nix
    ./locale.nix
    ./networking.nix
    ./users.nix
  ];
  
  # System definitions
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.05";

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Hostname
  networking.hostName = "nixos";
  
  # Enable touchpad support.
  services.xserver.libinput.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
