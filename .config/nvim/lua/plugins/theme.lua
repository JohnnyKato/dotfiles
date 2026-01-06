return {
    {
        'vague-theme/vague.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('vague').setup({
                bold = false,
                italic = false
            })
            vim.cmd.colorscheme('vague')
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                section_separators = { left = '', right = '' },
                component_separators = { left = '', right = '' }
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {{ 'filename', path = 1 }},
                lualine_x = {{ 'lsp_status', symbols = {done = ''}, separator = ' |' }, { 'encoding', separator = ' |' }, 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
        },
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        ---@module 'ibl'
        ---@type ibl.config
        opts = {indent = {char = '│'}},
    },
}
