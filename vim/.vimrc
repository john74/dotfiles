call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline#extensions#tabline#enabled = 1




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
