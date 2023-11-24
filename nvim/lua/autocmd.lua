local vim = vim
local api = vim.api

local augroup = api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = api.nvim_create_autocmd   -- Create autocommand

local format_group = augroup("MyFormatGroup", { clear = true })
autocmd(
  { "BufRead", "BufNewFile" },
  { pattern = "*.md", command = "setlocal textwidth=72", group = format_group }
)
autocmd(
  { "BufEnter", "FileReadPost" },
  { pattern = "*", command = "normal zR", group = format_group }
)
