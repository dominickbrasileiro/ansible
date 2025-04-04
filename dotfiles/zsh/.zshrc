# ZSH/OMZ Config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
# plugins=(git kubectl zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete)
plugins=(git kubectl zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh


# ------------------------------------------------------------

export GPG_TTY=$(tty)
export MANPAGER="nvim +Man!"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

alias vim=nvim

bindkey -s '^f' 'tmux-sessionizer\n'

export PATH="$PATH:$HOME/.local/bin"

source <(fzf --zsh)
source ~/.zsecret

# Axios
export N_PREFIX=~/.n
export GOPATH=~/go
export KUBECONFIG="$HOME/.kube/config:$HOME/work/axios/axios/devops/kubeconfig"
export PATH="$PATH:$HOME/work/axios/hax/bin"
export PATH="$HOME/work/axios/axios/devops/scripts:${PATH}"
export PATH="${GOPATH}/bin:${PATH}"
export PATH="${N_PREFIX}/bin:${PATH}"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
alias axios="AWS_PROFILE=axios dev up"
