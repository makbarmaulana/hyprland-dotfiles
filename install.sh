#!/usr/bin/env bash

DOTFILES_DIR="$(dirname "$(readlink -f "$0")")"
export DOTFILES_DIR

source "${DOTFILES_DIR}/modules.sh"
source "${DOTFILES_DIR}/scripts/symlinks.sh"
source "${DOTFILES_DIR}/scripts/colors.sh"
source "${DOTFILES_DIR}/scripts/alert.sh"

function main () {
    local action="$1"
    local home_path="${HOME}"
    local config_path="${HOME}/.config"

    $action $home_path "${root_modules[@]}"
    $action $config_path "${config_modules[@]}"
}

OPTION=$1
case $OPTION in 
    -i|--install)
        main create_symlinks
        ;;
    -U|--uninstall)
        main remove_symlinks
        ;;
    *)
        echo "USAGE: $0 [OPTION]"
        echo "Options :"
        echo "  -i | --install    Create symlinks"
        echo "  -U | --uninstall  Remove symlinks"
        exit 1
        ;;
esac

