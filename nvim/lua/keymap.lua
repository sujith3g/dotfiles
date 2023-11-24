-- Keymaps config
-- vim.keymap.set({mode}, {lhs}, {rhs}, {options})
-- vim.api.nvim_set_keymap({mode}, {lhs}, {rhs}, {options})
function MyMap(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
MyMap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true})
-- Disable highlight untill next search
MyMap('n', '<esc><esc>', ':noh<return>')
-- Keymaps for saving using ctrl+s
MyMap('n', '<C-s>', ':update<CR>')
MyMap('v', '<silent><C-s>', '<C-c>:update<CR>')
MyMap('i', '<C-s>', '<C-o>:update<CR>')

-- TODO move plugin specific keymaps to respective config file

-- List buffers using Telescope
MyMap('n', '<leader>p', ':Telescope buffers<CR>')
-- File search using Telescope
MyMap('n', '<C-p>', ':Telescope find_files<CR>')

-- Map jk to <Esc> from insert mode.
MyMap('i', 'jk', '<Esc>')

-- reselect visual block after indent/outdent
MyMap('n', '>', '>gv')
MyMap('n', '<', '<gv')

-- Enter to newline
MyMap('n', '<CR>', 'o')

-- Disable Arrow keys
-- Bubble single lines
MyMap('n', '<down>', 'ddp')
MyMap('n', '<up>', 'ddkP')
MyMap('n', '<left>', '<Nop>')
MyMap('n', '<right>', '<Nop>')

-- ino <down> <Nop>
-- ino <up> <Nop>
-- ino <left> <Nop>
-- ino <right> <Nop>
--
