#!/bin/bash
if [ $# -eq 0 ]; then
   echo "Options to update:"
   echo "-v  | --vim   : update vimrc"
   echo "-e  | --emacs : update init.el"
   echo "-z  | --zsh   : update .zshrc"
   echo "-t  | --tmux  : update .tmux.conf"
   echo "-a  | --agnoster : update agnosterAfroLight theme"
   echo "-za | --zathura  : update zathurarc"
   echo "-vp | --vimp     : update vimperatorrc"
   echo "-zn | --znotif   : update notifyosd"
fi

for i in "$@"
do
case $i in
   -v|--vim)
   VIM="${i#*=}"
   cp .vimrc  ~/          # vim -v|--vim
   cp .vimrc.local  ~/    # vim -v|--vim
   echo "vimrc updated"
   shift # past argument=value
   ;;
   -e|--emacs)
   [ -d "$HOME/.emacs.d" ] && cp init.el ~/.emacs.d/ || echo "$HOME/.emacs.d does not exist"        # emacs -e|--emacs
   echo "init file updated"
   shift # past argument=value
   ;;
   -z|--zsh)
   cp .zshrc  ~/          # zsh -z|--zsh
   echo "zshrc updated"
   shift # past argument=value
   ;;
   -t|--tmux)
   cp .tmux.conf  ~/      # tmux -t|--tmux
   echo "tmux conf updated"
   shift # past argument=value
   ;;
   -a|--agnoster)
   [ -d "$HOME/.oh-my-zsh/themes" ] && cp agnosterAfroLight.zsh-theme ~/.oh-my-zsh/themes/ || echo "$HOME/.oh-my-zsh/themes does not exist"   # agnoster -a|--agnoster
   "agnosterAfroLight theme updated"
   shift # past argument=value
   ;;
   -za|--zathura)
   [ -d "$HOME/.config/zathura" ] && cp zathurarc ~/.config/zathura/ || echo "$HOME/.config/zathura/ does not exist"                          # zathura -za|--zathura
   echo "zathurarc updated"
   shift # past argument=value
   ;;
   -vp|--vimp)
   cp .vimperatorrc  ~/   # vimp -vp|--vimp
   echo "vimperatorrc updated"
   shift # past argument=value
   ;;
   -zn|--znotif)
   [ -d "$HOME/.zsh" ] && cp notifyosd.zsh ~/.zsh/ || echo "$HOME/ does not exist"                  # zsh notify -zn|--znotif
   echo "notifyosd updated"
   shift # past argument=value
   ;;
   -h|--help|*)
   echo "Options to update:"
   echo "-v  | --vim   : update vimrc"
   echo "-e  | --emacs : update init.el"
   echo "-z  | --zsh   : update .zshrc"
   echo "-t  | --tmux  : update .tmux.conf"
   echo "-a  | --agnoster : update agnosterAfroLight theme"
   echo "-za | --zathura  : update zathurarc"
   echo "-vp | --vimp     : update vimperatorrc"
   echo "-zn | --znotif   : update notifyosd"
           # help or unknown option
   ;;
esac
done
