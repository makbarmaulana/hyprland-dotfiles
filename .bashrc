# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='\[\033[0;36m\]\u\[\033[0;34m\]@\[\033[0;34m\]\h: \[\033[0;35m\]\w\[\033[0;36m\]\$\[\033[0m\] '

alias l='ls -al --color="auto"'
alias ll='ls -l --color="auto"'
alias ls='ls --color="auto"'
