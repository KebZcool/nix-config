{ config, pkgs, ... }:

{

 # Steam
  programs.steam = {
   enable = true;
   remotePlay.openFirewall = true; 
   dedicatedServer.openFirewall = true; 
   localNetworkGameTransfers.openFirewall = true;
 };


  # Configuration de la journalisation pour Steam
  services.journald.extraConfig = ''
    DefaultLimitNOFILE=1048576
  '';

}
