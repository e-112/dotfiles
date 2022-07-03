set nocompatible
set tabstop=4
set background=dark
set relativenumber
set hidden


" Plugin section: https://github.com/junegunn/vim-plug
call plug#begin()

" Theming
Plug 'morhetz/gruvbox'

" File browser
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Dynamic ctags invocation
Plug 'craigemery/vim-autotag'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'ycm-core/YouCompleteMe'

call plug#end()

syntax on
colorscheme gruvbox

let mapleader = ' '

" Configuration for fzf.vim

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
"
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Configuration for YouCompleteMe
let ycm_enable_semantic_highlighting=1
nnoremap <leader>gg :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gi :YcmCompleter GoToInclude<CR>

nnoremap <leader>yfd <plug>(YCMFindSymbolInWorkspace)
nnoremap <leader>yff <plug>(YCMFindSymbolInDocument)
