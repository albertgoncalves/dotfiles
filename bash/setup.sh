#!/usr/bin/env bash

set -eu

BASHRC=$1
TARGET="$HOME/.bashrc"

prelude () {
    cp "$WD/bash/$BASHRC" $TARGET
}

postlude () {
    f () {
        echo ". $HOME/$1" >> $TARGET
    }

    f ".nix-profile/etc/profile.d/nix.sh"
    f "miniconda3/etc/profile.d/conda.sh"
}

main () {
    prelude
    postlude
}

main
