set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set relativenumber
set hidden
set nowrap


" Plugin section: https://github.com/junegunn/vim-plug
call plug#begin()

" Theming
Plug 'morhetz/gruvbox'

" File browser
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Dynamic ctags invocation
Plug 'craigemery/vim-autotag'

" Fuzzy searching
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Code auto completion
Plug 'ycm-core/YouCompleteMe'

" CMake integration
Plug 'ilyachur/cmake4vim'

" Vim/Tmux key binding sharing for navigation
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

syntax on
colorscheme gruvbox

let mapleader = ' '

" Configuration for fzf.vim

nnoremap <leader>j :FZF <CR>

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

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

let g:ycm_enable_semantic_highlighting=1

nnoremap <leader>gg :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>go :YcmCompleter GoToDocumentOutline<CR>
nnoremap <F2> :YcmCompleter GoToInclude<CR>
nnoremap <F12> :YcmCompleter GoToReferences<CR>

nmap <leader>fw <Plug>(YCMFindSymbolInWorkspace)
nmap <leader>fd <Plug>(YCMFindSymbolInDocument)

" Configuration for clang-format invocation on the current buffer
let g:clang_format_path = exepath("clang-format")

map <C-f> :py3f /usr/share/vim/addons/syntax/clang-format.py<cr>
imap <C-f> <c-o>:py3f /usr/share/vim/addons/syntax/clang-format.py<cr>

" Configuration for cmake4vim

let g:cmake_build_dir = 'build'
let g:make_arguments = '-j4'
let g:cmake_reload_after_save = 1

nmap <F7> <Plug>(CMakeBuild)
nnoremap <F8> :cnext<CR>
nnoremap <F9> :cprevious<CR>
