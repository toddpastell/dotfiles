return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    delay = 0,
  },
  keys = {
    {
      '<leader>?',
      function() require('which-key').show { global = false } end,
      desc = 'buffer local keymaps',
    },
  },
}
