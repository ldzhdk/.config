vim.keymap.set("n", "<leader>e", ":Ex<CR>")

vim.keymap.set("n", "<leader>vt", [[<cmd>vsplit | term<cr>A]])
vim.keymap.set("n", "<leader>ht", [[<cmd>split | term<cr>A]])
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- LSP

vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Show hover' })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Show references' })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename symbol' })

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show line diagnostics' })
vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = 'Next diagnostic' })
vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = 'Prev diagnostic' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Diagnostics to location list' })
