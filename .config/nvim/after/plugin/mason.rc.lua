require("mason").setup()
require("mason-lspconfig").setup()

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
lspconfig['sumneko_lua'].setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
