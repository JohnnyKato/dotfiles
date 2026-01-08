let g:mapleader = "\<space>"

call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
call plug#end()

" basic settings
set number
set relativenumber
set scrolloff=10
set sidescrolloff=10
set nowrap
set confirm

" tab/indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set smarttab
set grepprg="rg --vimgrep"
set grepformat=%f:%l:%c:%m

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

" visual
set termguicolors
set completeopt=menuone,noinsert,noselect
set conceallevel=0
let g:highlightedyank_highlight_duration = 200
syntax on
colorscheme habamax

" file handling
set nobackup
set nowritebackup
set noswapfile
set undofile
set undodir=~/.vim/undo//
set autoread
filetype plugin indent on

" behaviour
set noerrorbells
set backspace=indent,eol,start
set noautochdir
set path+=**
set selection=inclusive
set mouse=a
set clipboard+=unnamedplus
set modifiable
set encoding=UTF-8
set wildmenu
set wildmode=longest:full,full
set wildignorecase
set foldlevel=99

" split
set splitright
set splitbelow

nmap <silent> <leader>e :Ex<cr>
nmap <silent> <esc> :nohlsearch<cr>

nmap <silent> <leader>qq :qa<cr>

" better movement
nmap <silent> n nzzzv
nmap <silent> N Nzzzv
nmap <silent> <c-u> <c-u>zz
nmap <silent> <c-d> <c-d>zz

nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

" spliting & resizing
nmap <silent> <leader>- :split<cr>
nmap <silent> <leader>\ :vsplit<cr>
nmap <silent> <leader>wd <c-w>c
nmap <silent> <c-up> :resize +2<cr>
nmap <silent> <c-down> :resize -2<cr>
nmap <silent> <c-right> :vertical resize -2<cr>
nmap <silent> <c-left> :vertical resize +2<cr>

" better indent
vmap < <gv
vmap > >gv

" move line
nmap <a-j> :m .+1<cr>==
nmap <a-k> :m .-2<cr>==
vmap <a-j> :m '>+1<cr>gv=gv
vmap <a-k> :m '<-2<cr>gv=gv

" terminal
nmap <leader>tr :term 
nmap <leader>tt :term<cr>
nmap <leader>ta :tabnew<cr>:term<cr><c-w>o
tmap  <c-\><c-n>
tmap <c-\> <c-\><c-n>

tmap <c-h> <c-\><c-n><c-w>h
tmap <c-j> <c-\><c-n><c-w>j
tmap <c-k> <c-\><c-n><c-w>k
tmap <c-l> <c-\><c-n><c-w>l

" buffer
nmap <silent> <leader>bd :bdelete<cr>

" fzf
nmap <leader>ff :Files .<cr>
nmap <leader>fb :Buffers<cr>
nmap <leader>fh :Helptags<cr>
nmap <leader>fg :Rg .<cr>
