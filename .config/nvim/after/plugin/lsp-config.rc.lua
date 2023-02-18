-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig');
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
lspconfig['rust_analyzer'].setup {
    capabilities = capabilities
}
lspconfig['gopls'].setup {
    capabilities = capabilities
}
lspconfig['solidity_ls'].setup {
    capabilities = capabilities,
}
lspconfig['clangd'].setup {
    capabilities = capabilities,
}
lspconfig['sumneko_lua'].setup {
    filetypes = { 'lua' },

    settings = {
        Lua = {
            -- Version of Lua used
            runtime = { version = 'LuaJIT' },
            -- Get the language server to recognize the `vim` global
            diagnostics = { globals = { 'vim' } },
            -- Make the server aware of Neovim runtime files
            workspace = {
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.stdpath('config') .. '/lua'] = true,
                },
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = { enable = false },
        },
    },
}

-- Format on save (relies on null_ls)
local on_attach = function(client, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end
