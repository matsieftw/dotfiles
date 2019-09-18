export ZDOTDIR=$HOME/.zsh
export PYENVDIR=$HOME/.pyenv
export NVM_DIR=$HOME/.nvm

export TERM="xterm-256color"

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
fi

source ~/.zsh/.zshrc
