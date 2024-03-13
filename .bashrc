# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='\[\033[0;36m\]\u\[\033[0;34m\]@\[\033[0;34m\]\h: \[\033[0;35m\]\w\[\033[0;36m\]\$\[\033[0m\] '


# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

# Utility
alias bashreload="source ~/.bashrc"
alias l="eza -al -s="type" --icons"
alias ll="eza -a -s="type" --icons"
alias ls="eza -D --icons"
alias lt="eza -a --tree --level=1 --icons"
alias mdisk="udisksctl mount -b"    # mdisk /dev/sdX
alias umdisk="udisksctl unmount -b"
alias wcon="nmcli -p dev wifi connect"  # wcon SSID --ask (for new connection)
alias wscan="nmcli dev wifi list --rescan yes"
alias wdis="nmcli connection down --ask"    # wdis SSID
alias shutdown="systemctl poweroff"
alias sleep="systemctl suspend"
alias neofetch="clear; neofetch"
alias cat="bat"
alias mkdir="mkdir -p"
alias bashconf="$EDITOR ~/.bashrc"
alias hyprconf="$EDITOR ~/.config/hypr/hyprland.conf"


# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs="clear; git status"
alias ga="ps git add"
alias gaa="ps git add ."
alias gr="ps git restore"
alias grs="ps git restore --staged"
alias gc="ps git commit -m"
alias gpu="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gco="git checkout"
alias gcl="git clone"


# -----------------------------------------------------
# FUNCTION
# -----------------------------------------------------

# Parse git status
function ps {
    "$@"
    clear
    git status
}

# Starship
eval "$(starship init bash)"
