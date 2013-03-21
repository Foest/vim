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
set cmdheight=2
set lazyredraw
set mat=2

let mapleader = ' '

filetype plugin indent on

nmap <leader>q :q<cr>
noremap / /\v
noremap ; q:i
noremap <leader>q :q<cr>
noremap <leader>w :w<cr>
noremap <leader>sr :%s/
inoremap jk <esc>

"treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

"highlight trailing spaces
hi link SpaceError Error
call matchadd("SpaceError", "\\s\\+$")

"Pressing <space> ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"no sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"go to last edit position on file open
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

colorscheme slate
