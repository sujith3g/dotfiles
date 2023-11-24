local vim = vim
local opt = vim.opt
-- syntax enable " Enable syntax highlighting
 -- switch cursor to line when in insert mode, and block when not
opt.guicursor='n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'
-- Set dark background
opt.background='dark'
-- Enable line numbers
opt.number = true
opt.backspace='indent,eol,start'
-- highlight currentline
opt.cursorline = true
-- Set scrolling when you are 8 line away from margin
opt.scrolloff=7
-- For hiding modified buffers without warning message
opt.hidden = true
-- To disable log from javascript-indent, ~/.vim/indent/javascript.vim
-- Shows the effects of a sub command incrementally as you type.
opt.inccommand='nosplit'
-- print('hello from init.lua')
-- Indentation
-- by default, use 2 spaces for indent.
opt.shiftwidth=2
-- number of spaces in tab when editing
opt.softtabstop=2
-- number of visual spaces per TAB
opt.tabstop=2
-- tabs are spaces
opt.expandtab = true
-- For showing tabs,newlines,trailing-white-spaces,etc.
opt.listchars = { eol='¬',tab='>·',trail='~',extends='>',precedes='<'}
opt.list=true
--to keep spell check language as British English
opt.spelllang='en_gb'
-- Enable system clipboard in OS X
opt.clipboard='unnamed'
--for keeping swap files in separate directory
opt.directory='/Users/sujith/.nvim_tmp/swap'
--for keeping undo in separate directory
opt.undodir='/Users/sujith/.nvim_tmp/undo_dir'
-- to highlight current line
opt.cursorline = true
 -- Set scrolling when you are 8 line away from margin
opt.scrolloff=7
opt.ignorecase = true
opt.smartcase = true


-- Enable folds using treesitter
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.cmd [[
  syntax enable
]]

