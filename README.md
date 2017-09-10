# dotfiles

## Dependencies

* Powerline Fonts
  * [Installation]( http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin )
  * [Additional Fonts]( https://github.com/powerline/fonts )
* [Oh-My-Zsh]( https://github.com/robbyrussell/oh-my-zsh )
* [vim-plug]( https://github.com/junegunn/vim-plug )
* [Git](https://git-scm.com/)

## Usage
For general updation, run the command `./update.sh`. This will show the flags to update dotfile of your choice.

### AgnosterAfro Zsh theme
Running the command `./update.sh -a` to copy the agnosterAfroLight theme to your zsh

### Zsh
Add the local zshrc changes in `.zshrc.local`

#### Plugins Used:
* [autojump](https://github.com/wting/autojump)
* sudo: double press esc key to add a `sudo` in-front of any command.

#### Aliases
* Tmux
  * `txa <sess-name>` to attach to `sess-name`
  * `txn <sess-name>` to create a session named `sess-name`
  * `txl` to `ls` all tmux sessions
  * `txk <sess-name>` to kill a session
* Git
  * `gcl` for `git clone`
  * `gpush` for `git push`
  * `gpull` for `git pull`
  * `gcm` for `git commit -m`
  * `gadd` for `git add`
  * `gdiff` for `git diff`
  * `gch` for `git checkout`
  * `gstat` for `git status`
  * `gmerge` for `git merge`
 
### Vim
Run the command `./update.sh -v`. Run the command `:PlugInstall` in vim to install all the necessary plugins.

#### Plugins used:
* [nerdtree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim.
* [nerdcomenter](https://github.com/scrooloose/nerdcommenter): Vim plugin for intensely orgasmic commenting.
* [easy-motion](https://github.com/easymotion/vim-easymotion): Vim motions on speed! 
* [vim-lastplace](https://github.com/farmergreg/vim-lastplace): Intelligently reopen files at your last edit position in Vim.

### Emacs

### Tmux
Tmux with solarized theme and emacs-like key bindings

## Contact

If you have any questions or for more information, contact [Afroz Alam](https://www.facebook.com/alam.afroz011) or [Pranay Baldev](https://www.facebook.com/pbaldev).
We'd be happy to help. :D
