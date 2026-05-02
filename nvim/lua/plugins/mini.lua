return {
  'nvim-mini/mini.nvim',
  version = '*',
  config = function()
    local icons = require 'mini.icons'
    icons.setup()

    local statusline = require 'mini.statusline'
    statusline.setup()
    statusline.section_location = function() return '%2l:%-2v' end

    local completion = require 'mini.completion'
    completion.setup()

    local git = require 'mini.git'
    git.setup()

    local diff = require 'mini.diff'
    diff.setup()

    local pairs = require 'mini.pairs'
    pairs.setup()
  end,
}
