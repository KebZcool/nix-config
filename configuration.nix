{ config, pkgs, lib, userSettings, ... }:

#---------------------------------------------------------------------
# Kevin Gaillard
# My personal NIXOS KDE configuration 
#---------------------------------------------------------------------

{
  imports = [
      ./hardware-configuration.nix
      ./gaming.nix
      ./vmware.nix
      ./tor.nix
      ./networking.nix 
      ./ssh.nix
      ./printing.nix
      ./firewall.nix
      ./ollama.nix
      ./boot.nix
      ./firefox.nix
      ./packages.nix
      ./optimisation.nix
      ./flatpak.nix
      ./pipewire.nix   
      ./bluetooth.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  # boot.plymouth.enable = true;               # Activates the Plymouth boot splash screen.
  # boot.plymouth.theme = "breeze";           
  
 # Configuration des paramètres sysctl
  boot.kernel.sysctl = {
    # Protection contre les attaques de type SYN flood
    "net.ipv4.tcp_syncookies" = 1;
    
    # Protections contre le spoofing
    "net.ipv4.conf.all.rp_filter" = 1;
    "net.ipv4.conf.default.rp_filter" = 1;
    
    # Désactive le routage des paquets
    "net.ipv4.ip_forward" = 0;
    
    # Désactive les réponses aux broadcasts (protection SMURF)
    "net.ipv4.icmp_echo_ignore_broadcasts" = 1;
    
    # Protection contre les attaques SMURF
    "net.ipv4.icmp_ignore_bogus_error_responses" = 1;
  };

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

  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "fr";
    variant = "azerty";
  };

  # Configure console keymap
  console.keyMap = "fr";

   # User account
   users.users.kebzcool = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" "render" ];
    packages = with pkgs; [];
    uid = 1000;
  };

  # Fonctionnement de Davinci Resolve avec les GPU AMD 
  hardware.amdgpu.opencl.enable = true;  

  # SSD 
  services.fstrim.enable = true;
  fileSystems."home/kebzcool/Saves" =
    { device = "/dev/disk/by-uuid/6b33f298-ad54-4671-bae7-da34725fafd0";
      fsType = "ext4";
  };

  # Machine virtuelle 
  programs.virt-manager.enable = true;
  virtualisation.libvirtd.enable = true;
  services.qemuGuest.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Active les flatpak
  services.flatpak.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #  enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
  # settings.PermitRootLogin = "yes";
  # services.openssh.settings.PasswordAuthentication = false;   

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

 nix.settings.experimental-features = [ "nix-command" "flakes" ];   

}
