vim.pack.add({
   'https://github.com/stevearc/oil.nvim',
})
require('oil').setup()

vim.keymap.set('n', '<leader>o', "<CMD>Oil<CR>", { desc = 'Open explorer' })

-- Clear highlight on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
