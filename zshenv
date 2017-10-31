export ZDOTDIR=$HOME/.zsh

export TERM="xterm-256color"

export LANG=en_US.UTF-8

export PATH="/usr/local/opt/node@6/bin:$PATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
fi
