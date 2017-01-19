declare empty_counter=0

precmd_hook() {
    if [[ $empty_count -gt 1 ]]; then
        /usr/bin/clear
        let empty_count=0
    fi

    let empty_count=$empty_count+1
}

preexec_hook() {
    let empty_count=0
}

autoload -U add-zsh-hook

add-zsh-hook precmd precmd_hook
add-zsh-hook preexec preexec_hook
