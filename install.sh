#!/bin/sh
set -e
cd "$(dirname "$0")"

link() {
    src="$PWD/$1"
    dst="$HOME/$2"
    mkdir -p "$(dirname "$dst")"
    if [ -e "$dst" ] && [ ! -L "$dst" ]; then
        mv "$dst" "$dst.bak"
    fi
    ln -sfn "$src" "$dst"
}

link vimrc .vimrc
link tmux.conf .tmux.conf
link zshrc .zshrc
link gitconfig .gitconfig
