"                           __
" .-----.-----.-----.--.--.|__|.--------.
" |     |  -__|  _  |  |  ||  ||        |
" |__|__|_____|_____|\___/ |__||__|__|__|
" 
set nocompatible
filetype off

colorscheme gruvbox

call plug#begin()
Plug 'tpope/vim-surround'    
Plug 'ap/vim-css-color'
Plug 'Yggdroot/indentLine'
Plug 'chrisbra/changesPlugin'
Plug 'vim-python/python-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'neomutt/neomutt.vim'
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-eunuch'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/Pydiction'
Plug 'vim-scripts/indentpython.vim'
call plug#end()

syntax enable
set noswapfile
set noshowmode
set number
set wildmenu
set wildmode=longest:full,list:full
set encoding=UTF-8
set nofoldenable
set foldmethod=marker
set foldtext=MyFoldText()
set foldmarker={{{,}}}
set nocursorline
set showmatch				" Show matching brackets.
set linebreak
set ignorecase				" Do case insensitive matching
set smartcase				" Do smart case matching
set clipboard+=unnamedplus	" Use System Clipboard
set mouse=a					" Enable mouse usage (all modes)
set tabstop=4     
set shiftwidth=4  
set softtabstop=4 
set fillchars+=vert:│,fold:\ ,eob:\ 
set nolist
set listchars=tab:│\ 
colorscheme gruvbox
