local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})



-- ToggleTerm
vim.keymap.set('n', '<leader>term', '<CMD>ToggleTerm size=10 dir=~/ direction=horizontal<CR>', {})

-- Close Buffer
vim.keymap.set('n', '<leader>bd', '<CMD>bdelete<CR>')
vim.keymap.set('n', '<leader>bq', '<CMD>q<CR>')
