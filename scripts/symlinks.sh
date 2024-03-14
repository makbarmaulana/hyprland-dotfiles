#!/usr/bin/env bash

create_symlinks() {
    local target_path="$1"
    local modules=("${@:2}")

    for module in "${modules[@]}"; do
        if [[ ! -e  "${DOTFILES_DIR}/${module}" ]]; then
            echo -e "${INFO} ${C36}'${module}'${C0} is defined in modules.sh, but cannot found in the ${C36}${DOTFILES_DIR}${C0} directory. Skipping..."
            continue
        fi

        if [[ -e "${target_path}/${module}" ]]; then
            rm -rf ${target_path}/${module}
            ln -rsf ${DOTFILES_DIR}/${module} ${target_path}
            echo -e "${SUCCESS} The directory ${C32}${target_path}/${module}${C0} exists. Overwritting..."
        else
            ln -rsf ${DOTFILES_DIR}/${module} ${target_path}
            echo -e "${SUCCESS} Created symlink for ${C32}'${module}'${C0} in ${C32}${target_path}/${module}${C0}"
        fi
        
    done
}

remove_symlinks() {
    local target_path="$1"
    local modules=("${@:2}")

    for module in "${modules[@]}"; do
        if [[ -e  ${target_path}/${module} ]]; then
            rm -rf ${target_path}/${module}
            echo -e "${SUCCESS} The directory ${C32}${target_path}/${module}${C0} has been removed"
        fi

    done
}

