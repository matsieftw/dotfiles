source $HOME/.zplug/init.zsh

zplug "lib/function", from:oh-my-zsh
zplug "lib/completion", from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/termsupport", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/git-extras", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "$ZSH", from:local, use:mattie.zsh-theme, as:theme

# ask to install new plugins
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_TITLE="true"

export ZSH=$HOME/.zsh

export TERM="xterm-256color"

export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# source theme
#source $ZSH/mattie.zsh-theme

# source local settings
if [ -f $HOME/.zshrc.local ]; then
  source $HOME/.zshrc.local
fi

# source aliases
if [ -f $ZSH/.aliases ]; then
  source $ZSH/.aliases
fi

# source scripts
for file in $ZSH/functions/*; do
  source "$file"
done
