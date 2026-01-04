return {
    'mfussenegger/nvim-dap',
    dependencies = {
        'theHamsta/nvim-dap-virtual-text',
        {
            'igorlfs/nvim-dap-view',
            ---@module 'dap-view'
            ---@type dapview.Config
            opts = {
                windows = {
                    terminal = {
                        position = 'right',
                        hide = {},
                        start_hidden = false,
                    },
                },
            },
        },
    },
    config = function()
        require('nvim-dap-virtual-text').setup()

        local dap = require('dap')
        dap.adapters.cppdbg = {
            id = 'cppdbg',
            type = 'executable',
            command = vim.fn.expand('$MASON/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7')
        }

        dap.configurations.c = {
            {
                name = 'launch',
                type = 'cppdbg',
                request = 'launch',
                program = function()
                    return vim.fn.input('Exec: ', vim.fn.getcwd() .. '/')
                end,
                args = {},
                cwd = '${workspaceFolder}',
                stopAtBeginningOfMainSubProgram = false
            }
        }
        dap.configurations.cpp = dap.configurations.c
    end,
    keys = {
        {'<leader>dt', ':DapViewToggle<cr>'},
        {'<leader>db', ':DapToggleBreakpoint<cr>'},
        {'<leader>dc', ':DapContinue<cr>'},
        {'<leader>dw', ':DapViewWatch<cr>'},
        {'<leader>do', ':DapStepOver<cr>'},
        {'<leader>di', ':DapStepInto<cr>'},
        {'<leader>du', ':DapStepOut<cr>'},
    }
}
