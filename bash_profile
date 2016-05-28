# .bash_profile
# If .bash_profile exists, bash doesn't read .profile
if [[ -f ~/.profile ]]; then
       	. ~/.profile
fi

export PATH=~/.bin:/usr/local/Cellar/python/2.7/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
