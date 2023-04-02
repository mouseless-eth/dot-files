-- Set up lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")

local on_attach = function(client)
    -- Enable autoformat on save
    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)")
    -- Add other on_attach functionality here if needed
end

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
lspconfig["rust_analyzer"].setup({
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
            procMacro = {
                enable = false
            },
            diagnostics = {
                disabled = { "unresolved-proc-macro" }
            }
        }
    }
})
lspconfig["gopls"].setup({
    capabilities = capabilities,
})
lspconfig["tsserver"].setup({
    capabilities = capabilities,
})
lspconfig["solidity"].setup({
    capabilities = capabilities,
    on_attach = on_attach,

    cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
    filetypes = { "solidity" },
    single_file_support = true,
    root_dir = require("lspconfig.util").root_pattern("foundry.toml"),
})
lspconfig["clangd"].setup({
    capabilities = capabilities,
})
lspconfig["jedi_language_server"].setup({
    capabilities = capabilities,
})
lspconfig["sumneko_lua"].setup({
    filetypes = { "lua" },

    settings = {
        Lua = {
            -- Version of Lua used
            runtime = { version = "LuaJIT" },
            -- Get the language server to recognize the `vim` global
            diagnostics = { globals = { "vim" } },
            -- Make the server aware of Neovim runtime files
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = { enable = false },
        },
    },
})

vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]])
