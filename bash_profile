# .bash_profile
# If .bash_profile exists, bash doesn't read .profile
if [[ -f ~/.profile ]]; then
       	. ~/.profile
fi

# If the shell is interactive and .bashrc exists, get the aliases and functions
if [[ $- == *i* && -f ~/.bashrc ]]; then
	. ~/.bashrc
fi
if [[ -f ~/.bash_aliases ]]; then
	. ~/.bash_aliases
fi
export PATH=~/.bin:/usr/local/Cellar/python/2.7/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH
