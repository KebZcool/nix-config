{ pkgs, ... }:

{
 # Enable AppImage
    programs.appimage = {
      enable = true;
      binfmt = true;
  };

 # List packages installed in system profile.
  environment.systemPackages = with pkgs; [
   # App
   kdePackages.kate
   kdePackages.kcalc
   #Utiles
   cool-retro-term 
   bottles
   ntfs3g # support NTFS
   # Montage video
   kdenlive
   davinci-resolve 
   # Security
   bitwarden 
   # Fetch
   fastfetch   
   # Photos and image
   gimp
   inkscape
   darktable
   upscayl 
   krita
   # Médias
   vlc
   freetube
   spotube
   # Bureautique
   libreoffice-fresh
   hunspell
   hunspellDicts.fr-moderne
   onlyoffice-desktopeditors
   joplin-desktop
   # Navigateur
   brave
   # Messagerie
   thunderbird 
   discord
   # Sync
   git
 ];
}
