# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export EDITOR=nvim
export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"
export DOTFILES=$HOME/.dotfiles
export ZSH=$DOTFILES/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"

zstyle ":omz:update" mode auto
zstyle ":omz:update" frequency 14

plugins=(
    git
    fzf
    eza
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $DOTFILES/.aliases

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $DOTFILES/.p10k.zsh ]] || source $DOTFILES/.p10k.zsh

