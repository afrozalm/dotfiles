#!/usr/bin/env bash

BASEDIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# TODO: put a loop
ln -s $BASEDIR/.tmux.conf ~/.tmux.conf
ln -s $BASEDIR/.vimrc     ~/.vimrc
ln -s $BASEDIR/.alias.sh  ~/.alias.sh

echo "source $HOME/.alias.sh" >> ~/.zshrc
