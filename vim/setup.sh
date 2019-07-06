#!/usr/bin/env bash

set -eu

VIMRC=$1

prelude () {
    for x in "$VIM_DIR/colors/" "$VIM_DIR/syntax/"; do
        if [ ! -d $x ]; then
            mkdir -p $x
        fi
    done
}

vimrc() {
    cp "$WD/vim/$VIMRC" "$HOME/.vimrc"
}

colors () {
    x="$VIM_DIR/colors/bla.vim"
    if [ ! -f $x ]; then
        cp "$WD/vim/bla.vim" $x
    fi
}

syntax () {
    f () {
        if [ ! -f "$VIM_DIR/$2" ]; then
            curl "$GIT_URL/$1" >"$VIM_DIR/$2"
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
    vimrc
    colors
    syntax
}

main
