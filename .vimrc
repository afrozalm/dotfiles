call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'freeo/vim-kalisi'
Plug 'dietsche/vim-lastplace'
Plug 'anyakichi/vim-surround'

call plug#end()

set expandtab
set shiftwidth=4
set softtabstop=4
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

source ~/.vimrc.local
