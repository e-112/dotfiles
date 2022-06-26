set nocompatible
set tabstop=4
set background=dark


" Plugin section: https://github.com/junegunn/vim-plug
call plug#begin()

" Theming
Plug 'morhetz/gruvbox'

" File browser
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Dynamic ctags invocation
Plug 'craigemery/vim-autotag'

call plug#end()

syntax on
colorscheme gruvbox
