{ pkgs, ... }:

{

  boot = {
    # Configuration de Plymouth
    plymouth = {
      enable = true;
      theme = "owl";
      themePackages = with pkgs; [
        # Installation du thème spécifique "owl"
        (pkgs.adi1090x-plymouth-themes.override {
          selected_themes = [ "owl" ];
        })
      ];
    };

    # Activer le "Silent Boot"
    consoleLogLevel = 0;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "loglevel=3"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
    ];

    # Cacher le choix du système d'exploitation pour les bootloaders.
    loader.timeout = 0;
  };
}
