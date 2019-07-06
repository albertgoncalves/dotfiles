#!/usr/bin/env bash

set -eu

VIMRC=$1
BLA=$2

prelude () {
    for x in "$HOME/.vim/colors/" "$HOME/.vim/syntax/"; do
        if [ ! -d $x ]; then
            mkdir -p $x
        fi
    done
}

exposition () {
    cp "$WD/vim/$VIMRC" "$HOME/.vimrc"
}

development () {
    x="$HOME/.vim/colors/bla.vim"
    if [ ! -f $x ]; then
        cp "$WD/vim/$BLA" $x
    fi
}

recapitulation () {
    f () {
        x="$HOME/.vim/$2"
        if [ ! -f $x ]; then
            curl "$GIT_URL/$1" > $x
        fi
    }

    f "futhark-vim/simplify/syntax/fut.vim" "syntax/fut.vim"
    f "haskell.vim/master/syntax/haskell.vim" "syntax/haskell.vim"
    f "vim-javascript-syntax/master/syntax/javascript.vim" \
        "syntax/javascript.vim"
    f "vim-nix/master/syntax/nix.vim" "syntax/nix.vim"
    f "stan.vim/master/syntax/stan.vim" "syntax/stan.vim"
    f "typescript-vim/master/syntax/typescript.vim" "syntax/typescript.vim"
    f "rust.vim/master/syntax/rust.vim" "syntax/rust.vim"
}

main () {
    prelude
    exposition
    development
    recapitulation
}

main
