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
opt.showmode = false
opt.updatetime = 200

-- GUI config
vim.o.guifont = 'JetBrainsMonoNL Nerd Font:h12'
vim.g.neovide_text_gamma = 0.0
vim.g.neovide_refresh_rate = 120
vim.g.neovide_text_contrast = 0.0
vim.g.neovide_cursor_trail_size = 0.0
vim.g.neovide_scroll_animation_length = 0.0
vim.g.neovide_cursor_animation_length = 0.0
vim.g.neovide_scroll_animation_far_lines = 0
vim.g.neovide_position_animation_length = 0.0
vim.g.neovide_cursor_short_animation_length = 0.04
vim.g.neovide_cursor_animate_in_insert_mode = false


-- Tabbing / Indentantion
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.grepprg = "rg --vimgrep"
opt.grepformat = "%f:%l:%c:%m"
opt.breakindent = true

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
opt.inccommand = 'split'
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
