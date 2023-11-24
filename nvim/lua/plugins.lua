local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'folke/which-key.nvim',
  { 'folke/neoconf.nvim', cmd = 'Neoconf' },
  'folke/neodev.nvim',
  'altercation/vim-colors-solarized',
  'jamessan/vim-gnupg',
  'dstein64/vim-startuptime',
  'machakann/vim-highlightedyank',
  -- Lualine for status line/bar
  'nvim-lualine/lualine.nvim',
  -- Git wraper for vim
  'tpope/vim-fugitive',
  -- Hub for fugitive, for Github support
  'tpope/vim-rhubarb',
  -- Plugin shows git diff
  'airblade/vim-gitgutter',
  -- For surrounding text with "",'',{},(),etc.
  'tpope/vim-surround',
  -- for vertical line to show indent-level
  'yggdroot/indentline',
  -- NOTE: This is where your plugins related to LSP can be installed.
  --  The configuration is done below. Search for lspconfig to find it below.
  -- LSP Configuration & Plugins
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },
  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
      'hrsh7th/cmp-path',
    },
  },
  -- toggle comment using gc
  "terrortylor/nvim-comment",
  -- to navigate through tmux panes
  "alexghergh/nvim-tmux-navigation",
  -- for navigation
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
  },
  -- Telescope for fuzzy finding
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  --> Null ls for formatting, code action and more
  'jose-elias-alvarez/null-ls.nvim',
  -- vimwiki for - A PERSONAL WIKI FOR VIM
  -- 'vimwiki/vimwiki',
}
local opts = {}
require("lazy").setup(plugins, opts)

-- load plugin configs
require('plugin_config.colorscheme')
require('plugin_config.lualine')
require('plugin_config.nvim-tree')
require('plugin_config.nvim-treesitter')
require('plugin_config.telescope')
require('plugin_config.nvim-comment')
require('plugin_config.nvim-tmux-navigation')
require('plugin_config.lsp-config')
require('plugin_config.null-ls')
require('plugin_config.completions')
require('plugin_config.whichkey')

