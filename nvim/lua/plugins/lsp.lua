return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'mason-org/mason.nvim',
    'mason-org/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    { 'j-hui/fidget.nvim', opts = {} },
  },
  config = function()
    require('mason-lspconfig').setup {
      ensure_installed = { 'lua_ls', 'ts_ls' },
    }
    vim.lsp.enable { 'lua_ls', 'ts_ls' }
  end,
}
