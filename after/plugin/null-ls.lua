local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting",{})

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.flake8
    },
    on_attach = function(client,bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })
                vim.api.nvim_create_autocmd("BufWritePre",{
                group = augroup,
                buffer = bufnr,
                callback = function()
                    if not string.find(vim.api.nvim_buf_get_name(0), "models") then
                        vim.lsp.buf.format({bufnr = bufnr})
                    end
                end,
            })
        end
    end,
})
