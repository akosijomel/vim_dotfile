call plug#begin('~/.vim/plugged')
  " CTRL-P
  Plug 'https://github.com/kien/ctrlp.vim'
  " NERD TREE
  Plug 'https://github.com/scrooloose/nerdtree.git'
  Plug 'https://github.com/tpope/vim-rails.git'
call plug#end()

syntax enable

" set number-line
set number

" set open file on split right
set splitright

" set tabas to 2 
set ts=2

" set width of indention 
set sw=2

" expand tabs to spaces 
set expandtab

"show match
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" set line on cursor
set cursorline

"set mouse
set mouse=n

" refesh file 
set autoread

set ttymouse=xterm2

