local opt = vim.opt
vim.g.mapleader = ' '
vim.g.localleader = ' '

-- Basic Settingss
opt.number = true
opt.relativenumber = true
opt.scrolloff = 10
opt.sidescrolloff = 10
opt.wrap = false
opt.confirm = true
opt.laststatus = 3
opt.showmatch = true
opt.cursorline = true
-- opt.showmode = false

-- Tabbing / Indentantion
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.grepprg = "rg --vimgrep"
opt.grepformat = "%f:%l:%c:%m"

-- Search Settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Visual Settings
opt.termguicolors = true
opt.signcolumn = "yes"
opt.completeopt = "menuone,noinsert,noselect"
opt.conceallevel = 0

-- File Handling
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undofile = true
opt.autoread = true
opt.autowrite = false

-- Behavio Settings
opt.errorbells = false
opt.backspace = "indent,eol,start"
opt.autochdir = false
opt.path:append("**")
opt.selection = "inclusive"
opt.mouse = "a"
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.encoding = "UTF-8"
opt.wildmenu = true
opt.wildmode = "longest:full,full"
opt.wildignorecase = true

-- Folding Settings
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99

-- Split Behavior
opt.splitright = true
opt.splitbelow = true

