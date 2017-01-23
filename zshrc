export ZSH=$HOME/.zsh/.oh-my-zsh

export TERM="xterm-256color"

ZSH_THEME="mattie"

HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git,rails,ruby,common-aliases,git-extras,osx,vi-mode)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Source Aliases
source $HOME/.zsh/.aliases

# Source Scripts
for file in $HOME/.zsh/functions/*; do
    source "$file"
done

export PYENV_ROOT="$HOME/.pyenv"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
