return {
    {
        'alexghergh/nvim-tmux-navigation',
        opts = {},
        keys = {
            {'<c-h>', function() require('nvim-tmux-navigation').NvimTmuxNavigateLeft() end},
            {'<c-j>', function() require('nvim-tmux-navigation').NvimTmuxNavigateDown() end},
            {'<c-k>', function() require('nvim-tmux-navigation').NvimTmuxNavigateUp() end},
            {'<c-l>', function() require('nvim-tmux-navigation').NvimTmuxNavigateRight() end},
        },
    },
    {
        'folke/flash.nvim',
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        keys = {
            { "<leader>s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "<leader>S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
    }
}
