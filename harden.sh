#!/bin/sh

# Ce script vous permet de modifier les permissions de vos fichiers.
# Il permet également de renforcer la sécurité en empêchant : 
# les utilisateurs non privilégiés de modifier les fichiers de configuration système (root).


# Exécutez ce script dans ~/.dotfiles (ou le répertoire où vous avez installé les dotfiles).

# Exécutez ce script en tant que root !

# Cela suppose que votre compte utilisateur a un UID/GID de 1000

# Après avoir exécuté ce script, la commande `nix flake update` nécessitera les droits root.

# Utilisation : ./harden.sh

if [ "$#" = 1 ]; then
    SCRIPT_DIR=$1;
else
    SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
fi
pushd $SCRIPT_DIR &> /dev/null;
sudo chown 0:0.;
sudo chown 0:0 configuration.nix;
sudo chown 0:0 flake.lock;
sudo chown 0:0 flake.nix
sudo chown 0:0 harden.sh;
sudo chown 0:0 README.md;
sudo chown 0:0 LICENSE;
sudo chown 0:0 hardware-configuration.nix;
sudo chown 1000:1000 home.nix,
sudo chown 1000:users librewolf.nix;
sudo chown 1000:users networking.nix;
sudo chown 1000:users ollama.nix;
sudo chown 1000:users optimisation.nix;
sudo chown 1000:users packages.nix
sudo chown 1000:users plymouth.nix;
sudo chown 1000:users printing.nix;
sudo chown 1000:users sh.nix;
sudo chown 1000:users ssh.nix;
sudo chown 1000:users steam.nix;
sudo chown 1000:users tor.nix;
sudo chown 1000:users vmware;
sudo chown 1000:users flatpak;
popd &> /dev/null;

echo "Script exécuté avec succès."
