#############################
#							#
# 	general aliases			#
#							#
#############################

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#############################
#							#
# 	aliases for Desktop		#
#							#
#############################

alias tn ='vim /Documents/Task\ Notes.html'
alias scratch='vim /Documents/scratch.html'

#############################
#							#
#	aliases for matsieftw	#
#							#
#############################

alias project='cd /var/www/project'
alias ghost='cd /var/www/ghost'
alias static='cd /var/www/static'
