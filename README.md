# Configuration NixOS avec Flake & Home-manager

 Ce dépôt contient ma configuration "basique" de NixOS utilisant flake & Home-manager. 
 
 Il y a certainement des améliorations qui pourraient être apportées alors n'hésitez pas à les suggérer.
 
 Je suis encore en phase d'apprentissage du système et je débute avec home-manager et les modules.

## Structure des fichiers

- **hardware-configuration.nix** : Configuration matérielle générée automatiquement par NixOS.
- **steam.nix** : Configuration et installation de Steam.
- **vmware.nix** : Configuration pour VMware.
- **tor.nix** : Installation et configuration du navigateur Tor (en test).
- **sh.nix** : Script de shell pour diverses tâches.
- **networking.nix** : Configuration réseau.
- **ssh.nix** : Configuration des clés SSH.
- **printer.nix** : Configuration de l'imprimante.
- **firewall.nix** : Paramétrage du pare-feu.
- **ollama.nix** : Installation de l'IA locale.
- **plymouth.nix** : Configuration de Plymouth.
- **librewolf.nix** : Installation de Firefox ou LibreWolf et configuration.
- **flatpak.nix** : Fichier pour ajouter ou retirer des applications Flatpak du système.
- **packages.nix** : Fichier pour ajouter ou retirer des paquets du système.
- **optimisation.nix** : Script pour le nettoyage et la mise à jour du système.
