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
Plug 'vim-scripts/indentpython.vim'
Plug 'neoclide/coc.nvim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
call plug#end()

let g:airline_powerline_fonts = 1

set completeopt-=preview

syntax enable
set encoding=UTF-8
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
set showmatch
set linebreak
set ignorecase
set smartcase
set clipboard+=unnamedplus
set mouse=a
set fillchars+=vert:│,fold:\ ,eob:\ 
set nolist
set listchars=tab:│\ 
set autoindent

colorscheme gruvbox
