return {
	{
		'neovim/nvim-lspconfig', -- only supplies the default server definitions (cmd, root markers)
		dependencies = { 'hrsh7th/cmp-nvim-lsp' },
		config = function()
			-- applies to all servers
			vim.lsp.config('*', {
				capabilities = require('cmp_nvim_lsp').default_capabilities(),
			})

			vim.lsp.config('gopls', {
				settings = {
					gopls = {
						completeUnimported = true, -- suggest + auto-import packages not yet imported
						completionBudget = "1s",   -- default 100ms often returns nothing on big modules
						usePlaceholders = true,
						deepCompletion = true,
					},
				},
			})

			vim.lsp.enable({ 'gopls' })
		end,
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
		},
		config = function()
			local cmp = require('cmp')

			cmp.setup({
				sources = {
					{ name = 'nvim_lsp' },
					{ name = 'buffer' },
					{ name = 'path' },
				},
				mapping = cmp.mapping.preset.insert({
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),
					['<CR>'] = cmp.mapping.confirm({ select = true }),
				}),
			})

			-- cmp-cmdline was installed but never configured
			cmp.setup.cmdline({ '/', '?' }, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = { { name = 'buffer' } },
			})
			cmp.setup.cmdline(':', {
				mapping = cmp.mapping.preset.cmdline(),
				sources = { { name = 'path' }, { name = 'cmdline' } },
			})
		end,
	},
}
