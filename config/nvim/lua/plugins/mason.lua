return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {
                    registries = {
                        'github:mason-org/mason-registry',
                        'github:Crashdummyy/mason-registry'
                    }
                }
            },
            "neovim/nvim-lspconfig",
        },
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            vim.diagnostic.config({
                severity_sort = true,
                underline = true,
                virtual_text = true,
            })

            vim.lsp.config('clangd', {
                cmd = {'clangd', '--function-arg-placeholders=0'},
            })

            local map = function(keys, func)
                local mode = 'n'
                vim.keymap.set(mode, keys, func)
            end

            map('gd', function() require('fzf-lua').lsp_definitions() end)
            map('gD', function() require('fzf-lua').lsp_declarations() end)
            map('gi', function() require('fzf-lua').lsp_implementations() end)
            map('gt', function() require('fzf-lua').lsp_typedefs() end)
            map('gr', function() require('fzf-lua').lsp_references() end)
            map('<leader>ca', function() require('fzf-lua').lsp_code_actions() end)
        end,
    },
    {
        'seblyng/roslyn.nvim',
        ---@module 'roslyn.config'
        ---@type RoslynNvimConfig
        ft = {'cs', 'razor'},
        opts = {},
    },
    {'Decodetalkers/csharpls-extended-lsp.nvim'}
}
