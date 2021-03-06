print_colors () {
    for i in {0..255}; do
        printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n";
    done | less -R
}

export -f print_colors
export PS1="\n\[\e[1m\]\[\e[36m\][\w]$\[\e[m\]\[\e[0m\] "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls="ls --color=auto"
alias ll="ls -l"
export EDITOR=nvim
alias vi=nvim
alias vim=nvim
# alias nautilus="nautilus --no-desktop"
