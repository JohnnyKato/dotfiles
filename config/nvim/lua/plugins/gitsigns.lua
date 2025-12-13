return {
    'lewis6991/gitsigns.nvim',
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
    keys = {
        -- blame keymap
        {'<leader>bb', '<cmd>Gitsigns blame<cr>'},
        {'<leader>bl', '<cmd>Gitsigns blame_line<cr>'},
        {'<leader>bc', '<cmd>Gitsigns toggle_current_line_blame<cr>'},

        -- hunk trouble
        {'<leader>hq', '<cmd>Gitsigns setqflist target=all<cr>'},
        {'<leader>hl', '<cmd>Gitsigns setloclist target=attached<cr>'},
        {'<leader>hp', '<cmd>Gitsigns preview_hunk<cr>'},

        -- diff
        {'<leader>dw', '<cmd>Gitsigns toggle_word_diff<cr>'},
    }
}
