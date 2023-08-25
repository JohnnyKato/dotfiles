call plug#begin()
    Plug 'itchyny/lightline.vim'
    Plug 'ap/vim-css-color'
    Plug 'kovetskiy/sxhkd-vim'
    Plug 'vim-python/python-syntax'
    Plug 'fladson/vim-kitty'
    Plug 'ryanoasis/vim-devicons'
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'arcticicestudio/nord-vim'
call plug#end()


syntax enable
set number
set mouse=a
set clipboard=unnamedplus
set t_Co=256

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smartindent

set incsearch
set hidden
set smartcase

set nobackup
set nowritebackup

set noshowmode
set laststatus=2
let g:lightline = {
            \'colorscheme': 'darcula',
            \}

colorscheme nord
