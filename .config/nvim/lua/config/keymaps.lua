local map = vim.keymap.set

-- Center screen when jumping
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "<c-u>", "<c-u>zz")
map("n", "<c-d>", "<c-d>zz")

-- Better window navigation -- now using nvim-tmux-nav
-- map("n", "<c-h>", "<c-w>h")
-- map("n", "<c-j>", "<c-w>j")
-- map("n", "<c-k>", "<c-w>k")
-- map("n", "<c-l>", "<c-w>l")

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

-- Move line
map('n', '<A-j>', ':m .+1<CR>==')
map('n', '<A-k>', ':m .-2<CR>==')
map('v', '<A-j>', ':m \'>+1<CR>gv=gv')
map('v', '<A-k>', ':m \'<-2<CR>gv=gv')

-- Clear search
map("n", "<esc>", "<cmd>nohlsearch<cr>")

-- Quit
map("n", "<leader>qq", "<cmd>qa<cr>")

-- buffer maps
map('n', '<s-h>', ':bprevious<cr>', {silent = true})
map('n', '<s-l>', ':bnext<cr>', {silent = true})
map('n', '<leader>bd', ':bdelete<cr>', {silent = true})

-- Netrw
-- map("n", "<leader>e", "<cmd>Ex<cr>")
-- map("n", "<leader>e", "<cmd>Neotree toggle<cr>")

-- Diagnostics
map("n", "<leader>cd", vim.diagnostic.open_float)

-- Open pannels
map("n", "<leader>l", "<cmd>Lazy<cr>")
map("n", "<leader>cm", "<cmd>Mason<cr>")

-- Signature help
map({"n", "i"}, "", vim.lsp.buf.signature_help)

map('n', '<leader>cf', function() vim.lsp.buf.format({async = true}) end)

-- terminal maps
map('t', '', '<c-\\><c-n>')

if vim.g.neovide then
    map('t', '<c-\\>', '<c-\\><c-n>')
end

map('n', '<leader>tt', ':term<cr>', {silent = true})

map('t', '<c-h>', '<c-\\><c-n><c-w>h')
map('t', '<c-j>', '<c-\\><c-n><c-w>j')
map('t', '<c-k>', '<c-\\><c-n><c-w>k')
map('t', '<c-l>', '<c-\\><c-n><c-w>l')
