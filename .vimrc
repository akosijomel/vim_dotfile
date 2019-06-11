"References:
"https://medium.com/actualize-network/how-to-learn-vim-a-four-week-plan-cd8b376a9b85
"https://medium.com/@todariasova/rails-vim-101-essential-vim-plugins-for-ruby-on-rails-development-d74e808d186d
"https://dougblack.io/words/a-good-vimrc.html#spaces
"https://janjiss.com/walkthrough-of-my-vimrc-file-for-ruby-development/
"https://vimawesome.com
"https://medium.com/vim-drops/css-autocompletion-on-vim-no-plugins-needed-e8df9ce079c7
" http://learnvimscriptthehardway.stevelosh.com/

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
 
  " Themes for testing. Not final
  Plug 'crusoexia/vim-monokai'
  Plug 'tomasiser/vim-code-dark'
  Plug 'altercation/vim-colors-solarized'
  Plug 'patstockwell/vim-monokai-tasty'
  Plug 'junegunn/seoul256.vim'
  Plug 'chriskempson/base16-vim'
  
  " youcompleteme
  Plug 'valloric/youcompleteme'
  Plug 'honza/vim-snippets'
  Plug 'ervandew/supertab'


  " Bootstrap snippets
  Plug 'jvanja/vim-bootstrap4-snippets'


  " Dependencies of snipmate
  Plug  'MarcWeber/vim-addon-mw-utils'
  Plug  'tomtom/tlib_vim'
  Plug  'honza/vim-snippets'

  " Snippets for our use :)
  Plug 'garbas/vim-snipmate'
  
  " For pretty tab
  Plug 'webdevel/tabulous'

  " Html autocomplete
  Plug 'mattn/emmet-vim'

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

" We're running Vim, not Vi!
set nocompatible      
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set omnifunc=syntaxcomplete#Complete

set foldmethod=manual

let NERDTreeMinimalUI = 1

" set NERDTree Size 
let NERDTreeWinSize=20

" Theme and color
let g:vim_monokai_tasty_italic = 1
"colo seoul256

colorscheme vim-monokai-tasty
"let g:seoul256_background = 252
"colo seoul256
"let base16colorspace=256 
"colorscheme base16-default-dark
colorscheme monokai

"syntax enable
"set background=dark
"colorscheme solarized

" Autocomplete
set wildmode=longest,list,full
set wildmenu

" Word wrapping 
set wrap!

" word highliting
set hls is


" emmer leader key. for autocomplete html
let g:user_emmet_leader_key=','

"let NERDTreeMapOpenInTab='<ENTER>'

set clipboard=unnamedplus
