vim.pack.add({
    'https://github.com/sainnhe/gruvbox-material',
})

vim.g.gruvbox_material_foreground = 'mix'
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_transparent_background = 1

vim.cmd.colorscheme('gruvbox-material')

-- You can configure highlights by doing something like:
vim.cmd.hi('Comment gui=none')
