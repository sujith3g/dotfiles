local wk = require('which-key')

vim.o.timeout = true
vim.o.timeoutlen = 300

local mappings = {
  q = { ":q<CR>", "Quit" },
  r = { ":Telescope live_grep<CR>", "Telescope live grep" },
  l = { ":Lazy<CR>", "Open Lazy package manager" },
  F = { ":normal zA<CR>", "Toggle all folds under cursor" },
  n = { ":tabp<CR>", "Goto next tab"},
  m = { ":tabn<CR>", "Goto prev tab"}
}
local options = { prefix = '<leader>' }

wk.register(mappings, options)
