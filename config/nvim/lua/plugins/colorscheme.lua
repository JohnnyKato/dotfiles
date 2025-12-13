return {
    {
        'webhooked/kanso.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('kanso').setup({
                bold = false,
                italics = false,
            })
            -- vim.cmd.colorscheme('kanso-ink')
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require('tokyonight').setup({
                styles = {
                    comments = {italic = false},
                    keywords = {italic = false},
                },
            })
            vim.cmd.colorscheme('tokyonight-night')
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                no_italic = true,
                no_bold = true,
            })
            -- vim.cmd.colorscheme('catppuccin-mocha')
        end
    }
}
