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
Plug 'w0rp/ale'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
map <C-n> :NERDTreeToggle<CR>
let g:ale_linters = {'python': ['flake8'], 'javascript': ['eslint']}
if executable('rg')
  set grepprg=rg\ --vimgrep
endif
nnoremap <C-p> :Files<CR>
