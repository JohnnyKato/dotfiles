return {
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
        require('lualine').setup({
            options = {
                section_separators = '',
                component_separators = '',
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
                -- lualine_z = {function() return vim.fn.strftime('%H:%M') end},
            },
        })
    end,
}
