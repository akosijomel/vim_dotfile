call plug#begin('~/.vim/plugged')
  " CTRL-P
  Plug 'https://github.com/kien/ctrlp.vim'
  " NERD TREE
  Plug 'https://github.com/scrooloose/nerdtree.git'
  Plug 'https://github.com/tpope/vim-rails.git'
  " Multiple Cursor
  Plug 'https://github.com/terryma/vim-multiple-cursors.git'
  " The Nerd Commenter
  " check link for documentation
  " https://vimawesome.com/plugin/the-nerd-commenter
  Plug 'scrooloose/nerdcommenter'
  " youcompleteme
  Plug 'valloric/youcompleteme'
  ":
  Plug 'honza/vim-snippets'
  Plug 'ervandew/supertab'
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

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set foldmethod=indent 
