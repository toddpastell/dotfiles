vim.g.mapleader = " "
vim.o.clipboard = "unnamedplus"
vim.o.list = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.opt.completeopt = { "menuone", "noinsert" }

vim.pack.add({
  "https://github.com/nvim-mini/mini.nvim",
  "https://github.com/romus204/tree-sitter-manager.nvim",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/stevearc/conform.nvim",
})

vim.lsp.enable({ "lua_ls" })

require("tree-sitter-manager").setup()

require("mini.ai").setup()
require("mini.completion").setup()
require("mini.pairs").setup()
require("mini.surround").setup()
-- vim.opt.completeopt = { "menuone", "noinsert", "popup" }

require("mini.basics").setup()
local clue = require("mini.clue")
clue.setup({
  triggers = {
    { mode = "n", keys = "<leader>" },
    { mode = "n", keys = "g" },
    { mode = "n", keys = "z" },
    { mode = "n", keys = "[" },
    { mode = "n", keys = "]" },
    { mode = "i", keys = "<C-x>" },
    { mode = "n", keys = "<c-w>" },
    { mode = "n", keys = "'" },
    { mode = "n", keys = '"' },
  },
  clues = {
    clue.gen_clues.builtin_completion(),
    clue.gen_clues.g(),
    clue.gen_clues.marks(),
    clue.gen_clues.registers(),
    clue.gen_clues.windows(),
    clue.gen_clues.z(),
  },
  window = {
    delay = 0,
  },
})
require("mini.cmdline").setup()
require("mini.diff").setup()
require("mini.files").setup()
require("mini.git").setup()
require("mini.pick").setup()

require("mini.hipatterns").setup()
require("mini.cursorword").setup()
require("mini.icons").setup()
require("mini.indentscope").setup()
require("mini.statusline").setup()
require("mini.tabline").setup()
require("mini.trailspace").setup()

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    rust = { "rustfmt", lsp_format = "fallback" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})

local map = vim.keymap.set

-- window navigation
map("n", "<c-h>", "<c-w>h")
map("n", "<c-j>", "<c-w>j")
map("n", "<c-k>", "<c-w>k")
map("n", "<c-l>", "<c-w>l")

-- buffer cycling
map("n", "<tab>", "<cmd>bnext<cr>")
map("n", "<s-tab>", "<cmd>bprevious<cr>")

-- mini.files
map("n", "<leader>e", "<cmd>lua MiniFiles.open()<cr>", { desc = "File explorer" })

-- mini.pick
map("n", "<leader>ff", "<cmd>lua MiniPick.builtin.files()<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>lua MiniPick.builtin.grep_live()<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>lua MiniPick.builtin.buffers()<cr>", { desc = "Find buffers" })
