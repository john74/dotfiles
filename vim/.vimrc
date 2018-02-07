call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi', { 'do': 'git submodule update --init', 'for': ['python'] }


Plug 'mhinz/vim-startify'
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'

call plug#end()
" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'

" startify setting
let g:startify_change_to_vcs_root = 1
let g:startify_update_oldfiles = 1
let g:startify_session_dir = '~/.vim/session/'
let g:startify_bookmarks = [ '~/.vimrc' ]
let g:startify_custom_header = []
let g:startify_list_order = [
        \ ['   Bookmarks:'],
        \ 'bookmarks',
        \ ['   Sessions:'],
        \ 'sessions',
        \ ['   MRU:'],
        \ 'dir',
        \ ['   Files'],
        \ 'files'
        \ ]


let mapleader = ","
set splitright
set number
set cursorline
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set noautoread
set showcmd
set ruler
set laststatus=2
set ignorecase
set smartcase
set hlsearch
au InsertEnter * set nohlsearch
au InsertLeave * set hlsearch
set incsearch
map <leader>p "+p
map <leader>y "+y
nnoremap <leader><space> :nohlsearch<cr>

syntax enable
let g:solarized_termcolors=16
set background=dark
colorscheme solarized
set noswapfile


if exists("+undofile")
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif


" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
