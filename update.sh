#!/bin/bash

[ -d "$HOME/.emacs.d" ] && cp init.el ~/.emacs.d/ || echo "$HOME/.emacs.d does not exist"
[ -d "$HOME/.zsh" ] && cp notifyosd.zsh ~/.zsh/ || echo "$HOME/ does not exist"
[ -d "$HOME/.config/zathura" ] && cp zathurarc ~/.config/zathura/ || echo "$HOME/.config/zathura/ does not exist"
[ -d "$HOME/.oh-my-zsh/themes" ] && cp agnosterAfroLight.zsh-theme ~/.oh-my-zsh/themes/ || echo "$HOME/.oh-my-zsh/themes does not exist"
cp .tmux.conf  ~/
cp .vimperatorrc  ~/
cp .vimrc  ~/
cp .vimrc.local  ~/
cp .zshrc  ~/
