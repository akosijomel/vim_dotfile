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

  " Game code break
  Plug 'johngrib/vim-game-code-break'
 
  " Supertab
  Plug 'ervandew/supertab' 
   
  " CTRL-P
  Plug 'kien/ctrlp.vim'
  
  " NERD TREE
  Plug 'preservim/nerdtree'

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
  Plug 'altercation/vim-colors-solarized'
  Plug 'jacoborus/tender.vim'
  " Bootstrap snippets
  Plug 'jvanja/vim-bootstrap4-snippets'

  " Snipmate
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
 
 " JSX hightlight 
 Plug 'maxmellon/vim-jsx-pretty'

  Plug 'valloric/MatchTagAlways'
call plug#end()


" colorscheme vim-monokai-tasty
" colorscheme monokai
"let g:seoul256_background = 252
"colo seoul256
let base16colorspace=256 
"colorscheme tender
colorscheme solarized
set background=dark
" set termguicolors
set t_Co=256
syntax enable
" let g:lightline = { 'colorscheme': 'tender'  }

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
syntax on             
filetype on           
filetype indent on    
filetype plugin on    
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set number relativenumber

" set foldmethod=indent
set foldmethod=manual

" set NERDTree Size 
let NERDTreeWinSize=33
let NERDTreeMinimalUI = 1

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

set statusline=
set statusline+=%f
set statusline+=%#LineNr#
" set statusline+=%m
set statusline+=%=
" set statusline+=%#CursorColumn#
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

set ttimeout
set ttimeoutlen=100
set timeoutlen=3000

" NERDTree Number line
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" Personal VIM Keymapping 
noremap <leader>q :q<cr>
noremap <leader>w :w<cr>
noremap <leader><space> :noh<cr>
noremap <leader>F :tabdo NERDTreeToggle <cr>
noremap <leader>r :so $MYVIMRC <cr>
