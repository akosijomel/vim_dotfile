"References:
"https://medium.com/actualize-network/how-to-learn-vim-a-four-week-plan-cd8b376a9b85
"https://medium.com/@todariasova/rails-vim-101-essential-vim-plugins-for-ruby-on-rails-development-d74e808d186d
"https://dougblack.io/words/a-good-vimrc.html#spaces
"https://janjiss.com/walkthrough-of-my-vimrc-file-for-ruby-development/
"https://vimawesome.com

call plug#begin('~/.vim/plugged')

  " CTRL-P
  Plug 'https://github.com/kien/ctrlp.vim'
  
  " NERD TREE
  Plug 'https://github.com/scrooloose/nerdtree.git'
  
  " rails specific 
  Plug 'tpope/vim-rails'
  
  " Multiple Cursor
  Plug 'https://github.com/terryma/vim-multiple-cursors.git'

  " The Nerd Commenter
  " check link for documentation
  " https://vimawesome.com/plugin/the-nerd-commenter
  Plug 'scrooloose/nerdcommenter'

  " Vim Ruby
  Plug 'vim-ruby/vim-ruby'

  "Auto pair brackets
  Plug 'jiangmiao/auto-pairs'

  " to change surround: cs "'
  Plug 'tpope/vim-surround'

  " youcompleteme
  Plug 'valloric/youcompleteme'
  Plug 'honza/vim-snippets'
  Plug 'ervandew/supertab'

  " Dark Theme
  Plug 'tomasiser/vim-code-dark'
 
  " Bootstrap snippets
  Plug 'jvanja/vim-bootstrap4-snippets'


  " Dependencies of snipmate
  Plug  'MarcWeber/vim-addon-mw-utils'
  Plug  'tomtom/tlib_vim'
  Plug  'honza/vim-snippets'

  " " Snippets for our use :)
  Plug 'garbas/vim-snipmate'
  
  " For pretty tab
  Plug 'webdevel/tabulous'

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
au CursorHold * checktime  

set ttymouse=xterm2

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set foldmethod=manual

let NERDTreeMinimalUI = 1

" set NERDTree Size 
let NERDTreeWinSize=20

colorscheme codedark

" Autocomplete
set wildmode=longest,list,full
set wildmenu

" Word wrapping 
set wrap!

" word highliting
set hls is
