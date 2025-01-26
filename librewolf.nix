{ config, pkgs, ... }:

{
  # Configuration de LibreWolf (via Firefox)
  programs.firefox = {
    enable = true;
    package = pkgs.librewolf;
     # Support audio/vidéo via PipeWire
     wrapperConfig = {
       pipewireSupport = true;   
    };        

    # Configuration des langues
    languagePacks = [ "fr" "en-US" ];
    
    # Préférences générales et de confidentialité
    preferences = {
      # Configuration des langues
      "intl.accept_languages" = "fr-fr,en-us,en";
      "intl.locale.requested" = "fr,en-US";
      
      # Paramètres de confidentialité
      "privacy.donottrackheader.enabled" = true;
      "privacy.fingerprintingProtection" = true;
      "privacy.resistFingerprinting" = false;
      "webgl.disabled" = false;
      
      # Désactivation des fonctionnalités non désirées
      "extensions.pocket.enabled" = false;
      
      # Synchronisation (commenté par défaut)
      # "identity.fxaccounts.enabled" = true;
     };

     /* ---- POLICIES ---- */
     # Check about:policies #documentation for options.

     # Politiques de sécurité et de confidentialité
    policies = {
      DisableTelemetry = true;
      DisableFirefoxStudies = true;

     /* ---- EXTENSIONS ---- */
     # Check about:support for extension/add-on ID strings.
     # Valid strings for installation_mode are "allowed", "blocked",
     # "force_installed" and "normal_installed"
     /* ---- POLICIES ---- */

    # Configuration des extensions
      ExtensionSettings = {
      # Enhancer for YouTube
      "jid1-ZAdIEUB7XOzOJw@jetpack" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/file/4393561/enhancer_for_youtube-2.0.130.1.xpi";
        installation_mode = "force_installed";
      };
      
      # uBlock Origin
      "uBlock0@raymondhill.net" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
        installation_mode = "force_installed";
      };
      
      # Bitwarden
      "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/file/4410896/bitwarden_password_manager-2024.12.4.xpi";
        installation_mode = "force_installed";
      };
      
      # Pure URL
      "pure-url@jetpack" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/file/4270514/pure_url-1.3.1resigned1.xpi";
        installation_mode = "force_installed";
      };
      
      # SimpleLogin
      "addon@simplelogin" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/file/4332232/simplelogin-3.0.5.xpi";
        installation_mode = "force_installed";
      };
    };
  };
};

}

