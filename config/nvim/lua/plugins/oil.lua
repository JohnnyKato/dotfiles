return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        skip_confirm_for_simple_edits = true,
        prompt_save_on_select_new_entry = false,
        view_options = {
            show_hidden = true
        },
    },
    dependencies = { {'benomahony/oil-git.nvim'}, {"nvim-tree/nvim-web-devicons"} }, -- use if you prefer nvim-web-devicons
    lazy = false,
    keys = {
        {'<leader>ee', ':Oil .<cr>', silent = true},
        {'<leader>ef', ':Oil<cr>', silent = true},
    }
}
