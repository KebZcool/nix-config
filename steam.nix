{ config, pkgs, ... }:

#---------------------------------------------------------------------
# Kevin Gaillard
# 03/01/2025
# My personal NIXOS KDE user configuration 
# ¯\_(ツ)_/¯  
#---------------------------------------------------------------------

{

 # Steam
  programs.steam = {
   enable = true;
   remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
   dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  
 };


  # Configuration de la journalisation pour Steam
  services.journald.extraConfig = ''
    DefaultLimitNOFILE=1048576
  '';

}
