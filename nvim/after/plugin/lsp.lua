local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require('lspconfig')
local lspconfigs = require('lspconfig.configs')
local lsputil = require('lspconfig.util')
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>']     = cmp.mapping.scroll_docs(-4),
    ['<C-f>']     = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>']     = cmp.mapping.abort(),
    ['<C-a>']     = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

lspconfig.gopls.setup{}
-- lspconfig.solargraph.setup{
--   settings = {
--     solargraph = {
--       commandPath = '/.rbenv/shims/solargraph',
--       diagnostics = true,
--       completion = true
--     }
--   }
-- }
lspconfig.dartls.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.tsserver.setup {}
lspconfig.pyright.setup{}
lspconfig.templ.setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    },
}
lspconfig.sourcekit.setup{
  capabilities = {
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true,
      },
    },
  },
}

-- lspconfig.tailwindcss.setup({
--   filetypes = {
--     'templ',
--     'html',
--     'erb'
--   },
--   init_options = {
--     userLanguages = {
--         templ = "html"
--     }
--   }
-- })

vim.filetype.add({
 extension = {
  templ = "templ",
 },
})

vim.api.nvim_create_autocmd(
  {
    -- 'BufWritePre' event triggers just before a buffer is written to file.
    "BufWritePre"
  },
  {
    pattern = {"*.templ"},
    callback = function()
      -- Format the current buffer using Neovim's built-in LSP (Language Server Protocol).
      vim.lsp.buf.format()
    end,
  }
)

-- require'lspconfig'.ruby_ls.setup{}
