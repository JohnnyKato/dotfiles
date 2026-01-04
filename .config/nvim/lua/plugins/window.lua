return {
    {
        'akinsho/toggleterm.nvim',
        version = '*',
        opts = {
            open_mapping = [[<c-/>]]
        },
    },
    {
        "kdheepak/lazygit.nvim",
        lazy = true,
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
            { "<leader>cl", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
    },
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        opts = { options = { offsets = { { filetype = 'neo-tree', text = 'Neotree', text_align = 'left' } } } },
    },

    {'ojroques/nvim-bufdel', opts = {}},
}
