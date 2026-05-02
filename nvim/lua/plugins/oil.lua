return {
  'stevearc/oil.nvim',
  lazy = false,
  opts = {
    keymaps = {
      ['<Esc>'] = 'actions.close',
      ['<Tab>'] = 'actions.select',
    },
    view_options = {
      show_hidden = true,
    },
  },
  keys = {
    { '-', function() require('oil').open() end, desc = 'open parent directory' },
    { '<leader>-', function() require('oil').toggle_float() end, desc = 'open parent directory (floating)' },
  },
}
