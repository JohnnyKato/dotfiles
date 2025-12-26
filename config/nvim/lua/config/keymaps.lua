local map = vim.keymap.set

-- Center screen when jumping
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "<c-u>", "<c-u>zz")
map("n", "<c-d>", "<c-d>zz")

-- Better window navigation -- now using nvim-tmux-nav
map("n", "<c-h>", "<c-w>h")
map("n", "<c-j>", "<c-w>j")
map("n", "<c-k>", "<c-w>k")
map("n", "<c-l>", "<c-w>l")

-- terminal
map('t', '<esc><esc>', '<c-\\><c-n>')
map('n', '<leader>nt', ':terminal<cr>')

-- buffers
map('n', '<s-h>', ':bprev<cr>')
map('n', '<s-l>', ':bnext<cr>')
-- map('n', '<leader>wq', ':bdelete<cr>')

-- Splitting & Resizing
map("n", "<leader>-", "<c-w>s")
map("n", "<leader>\\", "<c-w>v")
map("n", "<leader>wd", "<c-w>c")
map("n", "<c-up>", "<cmd>resize +2<cr>")
map("n", "<c-down>", "<cmd>resize -2<cr>")
map("n", "<c-left>", "<cmd>vertical resize -2<cr>")
map("n", "<c-right>", "<cmd>vertical resize +2<cr>")

-- Better indenting in visual mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Better J behavior
map("n", "J", "mzJ`z")

-- Clear search
map("n", "<esc>", "<cmd>nohlsearch<cr>")

-- Save file
-- map({"i", "x", "n", "s"}, "<c-s>", "<cmd>w<cr>")

-- Quit
map("n", "<leader>qq", "<cmd>qa<cr>")

-- Netrw
-- map("n", "<leader>e", "<cmd>Ex<cr>")
map("n", "<leader>e", "<cmd>Neotree toggle<cr>")

-- Diagnostics
map("n", "<leader>cd", vim.diagnostic.open_float)

-- Open pannels
map("n", "<leader>l", "<cmd>Lazy<cr>")
map("n", "<leader>cm", "<cmd>Mason<cr>")

-- Signature help
map({"n", "i"}, "<c-/>", vim.lsp.buf.signature_help)

map('n', '<leader>cf', function() vim.lsp.buf.format({async = true}) end)
