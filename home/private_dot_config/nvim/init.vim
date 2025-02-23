:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'itchyny/lightline.vim' " Status bar
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

" color schemes
Plug 'doums/darcula'

" language support
Plug 'hashivim/vim-terraform' " Hashicorp Terraform

call plug#end()

set encoding=utf-8
set fileencoding=utf-8

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

:colorscheme darcula
:set termguicolors

let g:lightline = { 'colorscheme': 'darculaOriginal' }

