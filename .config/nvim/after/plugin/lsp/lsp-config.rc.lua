-- Set up lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
lspconfig["rust_analyzer"].setup({
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
            procMacro = {
                enable = true
            }
        }
    }
})
lspconfig["bufls"].setup({
    capabilities = capabilities,
})
lspconfig["eslint"].setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
        })
    end,
})
lspconfig["sqlls"].setup({
    capabilities = capabilities,
})
lspconfig["clangd"].setup({
    capabilities = capabilities,
    filetypes = { "c", "cpp", "objc" },
})
lspconfig["gopls"].setup({
    capabilities = capabilities,
})
lspconfig["docker_compose_language_service"].setup({
    capabilities = capabilities,
    filetypes
})
lspconfig["dockerls"].setup({
    capabilities = capabilities,
})
lspconfig["tsserver"].setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
    end
})
lspconfig["hls"].setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
    end,
    filetypes = { 'haskell', 'lhaskell', 'cabal' },
})
lspconfig["solidity_ls_nomicfoundation"].setup({
    capabilities = capabilities,
})
-- lspconfig["solidity"].setup({
--     capabilities = capabilities,
--     --on_attach = on_attach,
--
--     cmd = { "solidity-language-server", "--stdio" },
--     filetypes = { "solidity" },
--     single_file_support = true,
--     root_dir = require("lspconfig.util").root_pattern("foundry.toml"),
-- })
-- lspconfig["clangd"].setup({
--     capabilities = capabilities,
-- })
lspconfig["pyright"].setup({
    capabilities = capabilities,
})
lspconfig["emmet_ls"].setup({
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug",
        "typescriptreact", "vue" },
})
require 'lspconfig'.lua_ls.setup {}

--vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]])
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
