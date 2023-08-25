return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'windwp/nvim-autopairs'},
    {'nvim-treesitter/nvim-treesitter'},
    {'olivercederborg/poimandres.nvim'},
    {'catppuccin/nvim', name = 'catppuccin'},
    {
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v2.x',
            dependencies = {
                -- LSP Support
                {'williamboman/mason.nvim'},           -- Optional
                {'williamboman/mason-lspconfig.nvim'}, -- Optional
                {'neovim/nvim-lspconfig'},             -- Required

                -- Autocompletion
                {'hrsh7th/nvim-cmp'},     -- Required
                {'hrsh7th/cmp-nvim-lsp'}, -- Required
                {'L3MON4D3/LuaSnip'},     -- Required
            }
        }
    },
    {'shaunsingh/nord.nvim'},
    {'rose-pine/neovim', name = 'rose-pine'}
}
