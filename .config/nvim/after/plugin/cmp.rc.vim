set completeopt=menu,menuone,noselect

lua <<EOF
  local nvim_lsp = require'lspconfig'
  vim.cmd[[packadd nvim-cmp]]
  
  vim.cmd[[packadd cmp-nvim-lsp]]
  vim.cmd[[packadd cmp-buffer]]
  vim.cmd[[packadd cmp-look]]

  -- Setup nvim-cmp.
  local cmp = require'cmp'

  -- Setup lspkind
  local lspkind = require 'lspkind'

  cmp.setup({
    formatting = {
      format = lspkind.cmp_format({
        mode = 'symbol_text',
        maxwidth = 50,
        before = function(entry, vim_item)
          vim_item.kind = lspkind.presets.default[vim_item.kind]
          vim_item.menu = ({
            nvim_lsp = "[LSP]",
            look = "[Dict]",
            buffer = "[Buffer]",
          })[entry.source.name]
          return vim_item
        end
      })
    },

    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-o>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      { name = 'look' }, -- For vsnip users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['tsserver'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  require('lspconfig')['eslint'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  require('lspconfig')['rome'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  require('lspconfig')['taplo'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  require('lspconfig')['sumneko_lua'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  -- require('lspconfig')['solang'].setup {
  --   on_attach = on_attach,
  --   capabilities = capabilities,
  -- }

  --local on_attach = function(client)
  --  require'completion'.on_attach(client)
  --end

  --nvim_lsp.rust_analyzer.setup({
  --    on_attach=on_attach,
  --    settings = {
  --        ["rust-analyzer"] = {
  --            imports = {
  --                granularity = {
  --                    group = "module",
  --                },
  --                prefix = "self",
  --            },
  --            cargo = {
  --                buildScripts = {
  --                    enable = true,
  --                },
  --            },
  --            procMacro = {
  --                enable = true
  --            },
  --        }
  --    }
  --})
EOF
