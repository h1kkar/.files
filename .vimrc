#   ┬  ┬┬┌┬┐
#   └┐┌┘││││
#    └┘ ┴┴ ┴

let data_dir = has('vim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox

if v:progname =~? "evim"
  finish
endif

source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

augroup vimrcEx
  au!

  autocmd FileType text setlocal textwidth=78
augroup END

if has('syntax') && has('eval')
  packadd! matchit
endif

map <F5> :NERDTreeToggle<CR>
