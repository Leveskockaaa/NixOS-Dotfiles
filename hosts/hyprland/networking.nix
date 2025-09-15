{ config, ... }:

{
  # Enable networking
  networking.networkmanager.enable = true;

  # Enables wireless support via wpa_supplicant.
  networking.wireless.enable = true;

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.openssh.settings.PasswordAuthentication = true;
  services.openssh.settings.PermitRootLogin = "no";
  services.fail2ban.enable = true;

  networking = {
    firewall.enable = true;
    firewall.allowedTCPPorts = [ 22 ];
  }
}