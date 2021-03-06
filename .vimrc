call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/AutoComplPop'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'freeo/vim-kalisi'
Plug 'dietsche/vim-lastplace'
Plug 'chun-yang/auto-pairs'
Plug 'gioele/vim-autoswap'
Plug 'klen/python-mode'

call plug#end()

set expandtab
let g:rainbow_active = 1
colorscheme kalisi
set background=dark
let t_Co = 256
let g:airline_powerline_fonts = 1
let g:syntastic_check_on_open = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="base16"
syntax on
set autoread
set number
hi MatchParen ctermbg=239 ctermfg=112 cterm=bold

source ~/.vimrc.local
