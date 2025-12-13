return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = {'BufReadPost', 'BufNewFile'},
    lazy = false,
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {
                'lua',
                'vim',
                'bash',
                'c',
                'cpp',
                'json',
                'html',
                'css',
                'markdown',
            },
            auto_install = true,
            sync_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {enable = true},
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<CR>",
                    node_incremental = "<CR>",
                    scope_incremental = "<TAB>",
                    node_decremental = "<S-TAB>",
                },
            },
        })
    end,
}
