# ZSH/OMZ Config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git kubectl)
source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------

export GPG_TTY=$(tty)
export MANPAGER="nvim +Man!"

alias vim=nvim

bindkey -s '^f' 'tmux-sessionizer\n'

export PATH="$PATH:$HOME/.local/bin"

source <(fzf --zsh)
source ~/.zsecret
