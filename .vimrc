set nocompatible
set showcmd
set showmatch
set ignorecase
set smartcase
set modelines=0
set shellcmdflag=-ic
set scrolloff=5
set hidden
set showmode
set autoindent
set wildmenu
set visualbell
set cursorline
set ruler
set laststatus=2
set history=1000
set wrap
set textwidth=79
set gdefault
set incsearch
set showmatch
set hlsearch
set undolevels=2000
set ttyfast
set sw=2
set softtabstop=2
set expandtab
set ls=2
set colorcolumn=85
set undofile
let mapleader = ' '

filetype plugin indent on

nmap <leader>q :q<cr>
noremap / /\v
noremap ; q:i
noremap <leader>q :q<cr>
noremap <leader>w :w<cr>
inoremap jk <esc>

autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

"highlight trailing spaces
hi link SpaceError Error
call matchadd("SpaceError", "\\s\\+$")

colorscheme slate
