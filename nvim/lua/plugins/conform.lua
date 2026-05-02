return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      javascript = { 'prettier' },
      typescript = { 'prettier' },
    },
  },
  keys = {
    {
      '<leader>f',
      function() require('conform').format { async = true, lsp_fallback = true } end,
      desc = 'format buffer',
    },
  },
}
