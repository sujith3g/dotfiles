local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
  --[[ formatting ]]
  -- formatting.stylua,
  formatting.eslint,
  formatting.prettier,

  --[[ code actions ]]
  -- code_actions.eslint_d,

  --[[ diagnostics ]]
  -- diagnostics.eslint_d,
}

null_ls.setup({
  sources = sources
})


vim.api.nvim_set_keymap('n', '<c-f>', ':Format<CR>', { noremap = true })

