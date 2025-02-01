{ config, pkgs, ... }:

{

 environment.systemPackages = with pkgs; [
      heroic
      lutris
      mangohud
    ];

environment.sessionVariables = {
      MANGOHUD_CONFIG = "control=mangohud,legacy_layout=0,horizontal,battery,time,time_format=%H\\:%M,gpu_stats,gpu_power,cpu_stats,ram,vram,fps,frametime=1,frame_timing=1,hud_no_margin,table_columns=14";
   };

 # Steam
  programs.steam = {
   enable = true;
   extraEnv = {
       MANGOHUD = true;
    };
  };
   remotePlay.openFirewall = true; 
   dedicatedServer.openFirewall = true; 
   localNetworkGameTransfers.openFirewall = true;
 };

  # Configuration de la journalisation pour Steam
  services.journald.extraConfig = ''
    DefaultLimitNOFILE=1048576
  '';

}
