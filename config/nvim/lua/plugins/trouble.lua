return {
    'folke/trouble.nvim',
    opts = {},
    cmd = 'Trouble',
    keys = {
        {'<leader>tt', '<cmd>Trouble diagnostics toggle<cr>'},
        {'<leader>tT', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>'},
        {'<leader>tl', '<cmd>Trouble loclist toggle<cr>'},
        {'<leader>tq', '<cmd>Trouble qflist toggle<cr>'},
    }
}
