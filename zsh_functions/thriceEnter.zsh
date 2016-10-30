#!/bin/zsh
declare empty_counter=0

clear_hook() {
  if [ ${#${(z)BUFFER}} -eq 0 ]; then
    let empty_counter=$empty_counter+1
    if [ $empty_counter -eq 2 ]; then
      let empty_counter=0
      /usr/bin/clear
    fi

  else
    let empty_counter=0
  fi

  zle accept-line
}

zle -N clear_hook

bindkey '^M' clear_hook
