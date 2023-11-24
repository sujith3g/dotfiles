-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- load options config from lua/options.lua
require('options')

-- Set Leader key as comma
vim.g.mapleader = " "
-- Set LocalLeader key as ' '
vim.g.maplocalleader = ","
-- Config for gpg plugin
vim.g.GPGPrimeAgent = 1
-- autocmd User GnuPG setl textwidth=72

-- load all plugins and config
require('plugins')
-- load autocmd configs from lua/autocmd.lua
require('autocmd')
-- load keymap config from lua/keymap.lua
require('keymap')
