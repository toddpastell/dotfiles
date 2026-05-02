return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function(_, opts)
    require('telescope').setup(opts)
    require('telescope').load_extension 'fzf'
  end,
  keys = function()
    local builtin = require 'telescope.builtin'
    return {
      { '<leader>sh', builtin.help_tags, desc = 'search help' },
      { '<leader>sk', builtin.keymaps, desc = 'search keymaps' },
      { '<leader>sf', builtin.find_files, desc = 'search files' },
      { '<leader>ss', builtin.builtin, desc = 'search select Telescope' },
      { '<leader>sw', builtin.grep_string, desc = 'search current word', mode = { 'n', 'v' } },
      { '<leader>sg', builtin.live_grep, desc = 'search by grep' },
      { '<leader>sd', builtin.diagnostics, desc = 'search diagnostics' },
      { '<leader>sr', builtin.resume, desc = 'search resume' },
      { '<leader>s.', builtin.oldfiles, desc = 'search recent files' },
      { '<leader>sc', builtin.commands, desc = 'search commands' },
      { '<leader><leader>', builtin.buffers, desc = 'find existing buffers' },
    }
  end,
}
