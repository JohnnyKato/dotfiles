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
    },
    {
        'vague-theme/vague.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('vague').setup({
                bold = false,
                italic = false
            })
            -- vim.cmd.colorscheme('vague')
        end
    },
    {
        'ellisonleao/gruvbox.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('gruvbox').setup({
                bold = false,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    folds = false,
                },
                contrast = 'hard'
            })
            vim.cmd.colorscheme('gruvbox')
        end
    }
}
