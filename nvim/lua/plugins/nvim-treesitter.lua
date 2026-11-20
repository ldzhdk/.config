return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		-- replaces ensure_installed; installs asynchronously, skips already-installed parsers
		require("nvim-treesitter").install({
			"go", "lua", "typescript", "javascript", "json", "yaml",
			"html", "css", "bash", "python", "markdown", "scala",
		})

		-- replaces highlight = { enable = true }
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})
	end,
}
