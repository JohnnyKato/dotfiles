vim.diagnostic.config({
    severity_sort = true,
    underline = true,
    virtual_text = true,
})

vim.lsp.config('clangd', {
    cmd = {'clangd', '--function-arg-placeholders=0'},
})
