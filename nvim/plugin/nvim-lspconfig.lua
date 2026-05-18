vim.pack.add{
  { src = 'https://github.com/neovim/nvim-lspconfig' },
}

-- install these using your package manager!
vim.lsp.enable({'clangd', 'zls', 'lua_ls'})
