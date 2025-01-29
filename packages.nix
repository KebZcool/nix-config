{ pkgs, ... }:

{
 # List packages installed in system profile. To search, run:
 environment.systemPackages = with pkgs; [
  # App
  kdePackages.kate
  kdePackages.kcalc
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
  # Photos
  gimp
  inkscape
  darktable
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
  syncthing
  syncthingtray
  git
 ];
}
