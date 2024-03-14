# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='\[\033[0;36m\]\u\[\033[0;34m\]@\[\033[0;34m\]\h: \[\033[0;35m\]\w\[\033[0;36m\]\$\[\033[0m\] '

source $DOTFILES/.aliases

# Starship
eval "$(starship init bash)"
