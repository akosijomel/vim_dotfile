" ========================================================
" __     ___           ____        _   _____ _ _      
" \ \   / (_)_ __ ___ |  _ \  ___ | |_|  ___(_) | ___ 
"  \ \ / /| | '_ ` _ \| | | |/ _ \| __| |_  | | |/ _ \
"   \ V / | | | | | | | |_| | (_) | |_|  _| | | |  __/
"    \_/  |_|_| |_| |_|____/ \___/ \__|_|   |_|_|\___|
"
"     https://github.com/jomelmadia/vim_dotfile 
" ========================================================

"  TO DO 
"  1. leader key
"  2. wrap word 
"  3. type of buffer
"  4. response time for changing mode
  
"References:
"https://vim.rtorr.com://vim.rtorr.com/
"https://medium.com/actualize-network/how-to-learn-vim-a-four-week-plan-cd8b376a9b85
"https://medium.com/@todariasova/-vim-101-essential-vim-plugins-for-ruby-on-rails-development-d74e808d186d
"https://dougblack.io/words/a-good-vimrc.html#spaces
"https://janjiss.com/walkthrough-of-my-vimrc-file-for-ruby-development/
"https://vimawesome.com
"https://medium.com/vim-drops/css-autocompletion-on-vim-no-plugins-needed-e8df9ce079c7
"http://learnvimscriptthehardway.stevelosh.com/
"https://hashrocket.com/blog/posts/8-great-vim-mappings
"https://jeffkreeftmeijer.com/vim-number/
call plug#begin('~/.vim/plugged')

  " Supertab
  Plug 'ervandew/supertab'
   
  " CTRL-P
   Plug 'https://github.com/kien/ctrlp.vim'
  
  " NERD TREE
  Plug 'https://github.com/scrooloose/nerdtree.git'

  " gcc to comment
  Plug 'tomtom/tcomment_vim'
 
  " rails specific 
  Plug 'tpope/vim-rails'

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
  Plug 'nightsense/carbonized'

  " you complete me
  " Plug 'ycm-core/YouCompleteMe'  
  Plug 'ycm-core/YouCompleteMe', { 'do': './install.py'  } 

  " Bootstrap snippets
  Plug 'jvanja/vim-bootstrap4-snippets'

  " Plug 'msanders/snipmate.vim'
  Plug 'garbas/vim-snipmate' 
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  "
  Plug 'honza/vim-snippets'
  
  "For pretty tab
  Plug 'webdevel/tabulous'

  " Html autocomplete
  Plug 'mattn/emmet-vim'

  " Angular Syntax
  Plug 'burnettk/vim-angular'

  " Angular Syntax
  Plug 'leafgarland/typescript-vim'
 
  "Bash Support
  Plug 'vim-scripts/bash-support.vim'

call plug#end()


" colorscheme vim-monokai-tasty
"let g:seoul256_background = 252
"colo seoul256
"let base16colorspace=256 
"  colorscheme tender
colorscheme monokai
set background=dark

syntax enable

" set open file on split right
set splitright

" set tabs to 2 
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
filetype plugin indent on
set number relativenumber

set omnifunc=syntaxcomplete#Complete

" set foldmethod=indent
set foldmethod=manual

" set NERDTree Size 
let NERDTreeWinSize=33
let NERDTreeMinimalUI = 1

" Theme and color
let g:vim_monokai_tasty_italic = 1

" Autocomplete
set wildmode=longest,list,full
set wildmenu

" Word wrappingset wrap!   
set wrap!

" word highliting
 set hls is

" emmet leader key. for autocomplete html
let g:user_emmet_leader_key=','

set clipboard=unnamedplus

set modifiable

" "show current direction of a file 
set laststatus=2
set statusline+=%F

set ttimeout
set ttimeoutlen=100
set timeoutlen=3000

" Personal VIM Keymapping 
noremap <leader>q :q<cr>
noremap <leader>w :w<cr>
noremap <leader><space> :noh<cr>
