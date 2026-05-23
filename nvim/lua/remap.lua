-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Better movement in normal mode
vim.keymap.set('n', 'H', '^', { desc = 'Move left to whitespace' })
vim.keymap.set('n', 'L', '$', { desc = 'Move right to whitespace' })
vim.keymap.set('n', 'J', '}', { desc = 'Move down to whitespace' })
vim.keymap.set('n', 'K', '{', { desc = 'Move up to whitespace' })

-- Better movement in select mode
vim.keymap.set('v', 'H', '^', { desc = 'Move left to whitespace' })
vim.keymap.set('v', 'L', '$', { desc = 'Move right to whitespace' })
vim.keymap.set('v', 'J', '}', { desc = 'Move down to whitespace' })
vim.keymap.set('v', 'K', '{', { desc = 'Move up to whitespace' })

-- Clear highlight on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, { desc = 'Hover Documentation' })

vim.keymap.set('n', '<leader>ql', vim.diagnostic.setloclist, { desc = 'Open [Q]uick fix [L]ist' })

vim.keymap.set('n', '<leader>qf', function()
  vim.lsp.buf.code_action {
    filter = function(a)
      return a.isPreferred
    end,
    apply = true,
  }
end, { desc = '[Q]uick [F]ix' })
