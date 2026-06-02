vim.pack.add({
   'https://github.com/stevearc/oil.nvim',
})
require('oil').setup({
    columns = {
        "icon",
        "permissions",
        -- "size",
        -- "mtime",
      },
    -- constrain_cursor = "name",
})

vim.keymap.set('n', '-', "<CMD>Oil<CR>", { desc = 'Open explorer' })
