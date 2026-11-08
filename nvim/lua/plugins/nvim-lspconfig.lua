return {
  'neovim/nvim-lspconfig',
  config = function()
    -- Neovim 0.11+ (recommended)
    vim.lsp.enable({ 'lua_ls', 'pyright' })
  end,
}
