{ config, pkgs, lib, userSettings, ... }:

#---------------------------------------------------------------------
# Kevin Gaillard
# My personal NIXOS KDE configuration 
#---------------------------------------------------------------------

{
  imports = [
      ./hardware-configuration.nix
      ./gaming.nix
      ./vm.nix
      ./networking.nix 
      ./ssh.nix
      ./printing.nix
      ./firewall.nix
      ./ollama.nix
      ./boot.nix
      ./firefox.nix
      ./packages.nix
      ./system.nix
      ./flatpak.nix
      ./pipewire.nix   
      ./bluetooth.nix
      ./kde.nix
      ./sh.nix
      ./fstrim.nix
    ];

  # Set your time zone.
  time.timeZone = "Europe/Paris";

  # Select internationalisation properties.
  i18n.defaultLocale = "fr_FR.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "fr_FR.UTF-8";
    LC_IDENTIFICATION = "fr_FR.UTF-8";
    LC_MEASUREMENT = "fr_FR.UTF-8";
    LC_MONETARY = "fr_FR.UTF-8";
    LC_NAME = "fr_FR.UTF-8";
    LC_NUMERIC = "fr_FR.UTF-8";
    LC_PAPER = "fr_FR.UTF-8";
    LC_TELEPHONE = "fr_FR.UTF-8";
    LC_TIME = "fr_FR.UTF-8";
  };

  nixpkgs.config.allowUnfree = lib.mkForce true;
  
  # Configure console keymap
  console.keyMap = "fr";

   # User account
   users.users.kebzcool = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" "render" ];
    uid = 1000;
  };

   environment.systemPackages = with pkgs; [
   # shells
    fish

    #shell utils
    bat
    colordiff
    curl
    wget

    # icons
    papirus-nord

    # cursors
    nordzy-cursor-theme

  ];

  system.stateVersion = "24.11"; # Did you read the comment?

  nix.settings.experimental-features = [ "nix-command" "flakes" ];   

}
