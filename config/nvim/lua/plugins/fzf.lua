return {
    'ibhagwan/fzf-lua',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    ---@module 'fzf-lua'
    ---@type fzf-lua.Config|{}
    opts = {},
    init = function()
        require('fzf-lua').register_ui_select();
    end,
    keys = {
        {"<leader>ff", function() require('fzf-lua').files() end},
        {"<leader>fg", function() require('fzf-lua').live_grep() end},
        {"<leader>fb", function() require('fzf-lua').buffers() end},
        {"<leader>fh", function() require('fzf-lua').help_tags() end},
        {"<leader>fx", function() require('fzf-lua').diagnostics_document() end},
        {"<leader>fX", function() require('fzf-lua').diagnostics_workspace() end},
        {"<leader>fs", function() require('fzf-lua').lsp_document_symbols() end},
        {"<leader>fS", function() require('fzf-lua').lsp_workspace_symbols() end},
        {"<leader>fk", function() require('fzf-lua').keymaps() end},

        -- Lsp
        {"gd", function() require('fzf-lua').lsp_definitions() end},
        {"gD", function() require('fzf-lua').lsp_declarations() end},
        {"gi", function() require('fzf-lua').lsp_implementations() end},
        {"gt", function() require('fzf-lua').lsp_typedefs() end},
        {"gr", function() require('fzf-lua').lsp_references() end},
        {"<leader>ca", function() require('fzf-lua').lsp_code_actions() end},
    }
}
