# Configuration NixOS avec Flake & Home-manager

 Ce dépôt contient ma configuration de NixOS utilisant flake & Home-manager. 
 
 Il y a certainement des améliorations qui pourraient être apportées alors n'hésitez pas à les suggérer.
 
 Je suis encore en phase d'apprentissage sur NixOS et je débute avec home-manager et les modules.

 Pour mon utilisation personnel, je reste sur une config très basique et simple.

## Structure des fichiers

- **hardware-configuration.nix** : Configuration matérielle générée automatiquement par NixOS.
- **gaming.nix** : Configuration et installation de Steam & Mangohud.
- **vmware.nix** : Configuration pour VMware.
- **tor.nix** : Installation et configuration du navigateur Tor (en test).
- **sh.nix** : Script de shell pour diverses tâches.
- **networking.nix** : Configuration réseau.
- **ssh.nix** : Activation du SSH.
- **printer.nix** : Configuration de l'imprimante.
- **firewall.nix** : Paramétrage du pare-feu.
- **ollama.nix** : Installation de l'IA locale.
- **boot.nix** : Configuration de Plymouth/boot & du kernel.
- **firefox.nix** : Installation de Firefox ou LibreWolf + configuration.
- **flatpak.nix** : Fichier pour ajouter ou retirer des applications Flatpak du système.
- **packages.nix** : Fichier pour ajouter ou retirer des paquets du système.
- **optimisation.nix** : Script pour le nettoyage et la mise à jour du système.
- **pipewire.nix** : Parametrage de l'audio  
- **bluetooth.nix** : Activation du bluetooth
- **kde.nix** : Installation & configuration de KDE
