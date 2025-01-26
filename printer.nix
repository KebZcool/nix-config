{ config, lib, pkgs, ... }:

{
  services.printing = {
    enable = true;
    drivers = with pkgs; [ 
      cups-kyocera-ecosys-m2x35-40-p2x35-40dnw
    ];
  };

  environment.systemPackages = with pkgs; [
    cups
    system-config-printer
    
  ];

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  networking.firewall = {
    allowedTCPPorts = [ 631 9100 ];
    allowedUDPPorts = [ 631 ];
  };

  # Configuration correcte des utilisateurs et groupes
  users = {
    groups.kebzcool = { };  # Définition du groupe
    users.kebzcool = {
      group = "kebzcool";  # Assigne le groupe principal
      extraGroups = [ "lp" "lpadmin" ];  # Ajoute les groupes d'impression
    };
  };
}
