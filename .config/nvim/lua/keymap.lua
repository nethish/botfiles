local keymap = vim.keymap

-- LOCAL FUNCTIONS

-- CONFIG

-- SHORTCUTS
keymap.set('n', '<leader>rn', ':set rnu!<CR>')
keymap.set('n', '<leader>ek', ':edit '..vim.fn.stdpath('config')..'/lua/keymap.lua <CR>')
keymap.set('n', '<leader>ev', ':edit '..vim.fn.stdpath('config')..'/init.lua <CR>')
keymap.set('n', '<leader>sv', ':source '..vim.fn.stdpath('config')..'/init.lua <CR>')
keymap.set('n', '<leader>scc', ':source % <CR>')
keymap.set('n', '<esc>', ':noh <CR>')

keymap.set('n', '<C-J>', '<C-W>j')
keymap.set('n', '<C-K>', '<C-W>k')
keymap.set('n', '<C-L>', '<C-W>l')
keymap.set('n', '<C-H>', '<C-W>h')
keymap.set('n', 'x', '"_x')
keymap.set('n', 'x', '"_x')

-- TELESCOPE
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
keymap.set('n', '<leader>fm', builtin.marks, {})
keymap.set('n', '<leader>fch', builtin.command_history, {})
keymap.set('n', '<leader>frg', builtin.registers, {})

-- UNDOTREE
keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
