# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set Default User
DEFAULT_USER="dad"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="agnoster"


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails autopep8 ruby bgnotify bower brew bundler common-aliases colorize colored-man-pages copybuffer copydir copyfile dircycle dirhistory ember-cli extract fancy-ctrl-z github history iwhois osx python rsync taskwarrior tmux vi-mode vundle web-search wp-cli)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="vim ~/.zshrc"
 alias ohmyzsh="vim ~/.oh-my-zsh"

 # enter key script
source ~/.zsh_functions/thriceEnter.zsh
