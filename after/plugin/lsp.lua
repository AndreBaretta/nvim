local lsp = require('lsp-zero')
local lspconfig = require('lspconfig')
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

lsp.setup_servers({'lua_ls', 'rust_analyzer', 'gopls'})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'gopls', 'rust_analyzer', 'lua_ls'},
  handlers = {
    lsp.default_setup,
  }
})
