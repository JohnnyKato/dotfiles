return {
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {
            skip_confirm_for_simple_edits = true,
            propt_save_on_select_new_entry = false,
            view_options = {
                show_hidden = true
            },
        },
        dependencies = {{'benomahony/oil-git.nvim'}, {'nvim-tree/nvim-web-devicons'}},
        lazy = false,
        keys = {
            {'<leader>ee', ':Oil .<cr>', silent = true},
            {'<leader>ef', ':Oil<cr>', silent = true},
        }
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
        opts = {
            filesystem = {
                follow_current_file = {enabled = true},
                filtered_items = {
                    hide_dotfiles = false,
                }
            }
        },
        keys = {
            {'<c-e>', ':Neotree toggle<cr>', silent = true},
        }
    },
}
