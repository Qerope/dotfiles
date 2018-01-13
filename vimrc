set nocompatible
syntax on
filetype plugin indent on
set hidden
set incsearch hlsearch
set ignorecase smartcase
set number relativenumber
set expandtab shiftwidth=4 softtabstop=4

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
call plug#end()
map <C-n> :NERDTreeToggle<CR>
let g:ale_linters = {'python': ['flake8'], 'javascript': ['eslint']}
