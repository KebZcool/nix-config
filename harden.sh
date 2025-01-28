#!/bin/sh

# Ce script renforce la sécurité des fichiers de configuration en empêchant
# les utilisateurs non privilégiés de modifier les fichiers de configuration système (root).

# Exécutez ce script dans ~/.dotfiles (ou le répertoire où vous avez installé les dotfiles).

# Exécutez ce script en tant que root !

# Cela suppose que votre compte utilisateur a un UID/GID de 1000

# Après avoir exécuté ce script, la commande `nix flake update` nécessitera les droits root.

# Utilisation : ./harden.sh [--user]

#!/bin/sh

# Ce script renforce la sécurité des fichiers de configuration en empêchant
# les utilisateurs non privilégiés de modifier les fichiers de configuration système (root).

# Exécutez ce script dans ~/.dotfiles (ou le répertoire où vous avez installé les dotfiles).

# Exécutez ce script en tant que root !

# Cela suppose que votre compte utilisateur a un UID/GID de 1000

# Après avoir exécuté ce script, la commande `nix flake update` nécessitera les droits root.

# Utilisation : ./harden.sh [--user]

if [ "$#" = 1 ]; then
    SCRIPT_DIR=$1;
else
    SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
fi
pushd $SCRIPT_DIR &> /dev/null;
sudo chown 0:0 .;
sudo chown 0:0 configuration.nix;
sudo chown 0:0 flake.lock;
sudo chown 0:0 flake.nix
sudo chown 0:0 harden.sh;
sudo chown 1000:users networking.nix
popd &> /dev/null;

echo "Script exécuté avec succès."
