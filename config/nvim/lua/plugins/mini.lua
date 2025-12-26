return {
    {'nvim-mini/mini.move', version = '*', opts = {}},
    {'nvim-mini/mini.pairs', version = '*', opts = {}},
    {'nvim-mini/mini.comment', version = '*', opts = {}},
    {
        'nvim-mini/mini.bufremove',
        version = '*',
        opts = {},
        keys = { {'<leader>wq', ':lua MiniBufremove.delete()<cr>' } }
    },
}
