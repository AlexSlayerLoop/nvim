return {
	"catppuccin/nvim",
	name = "theme",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({})
		vim.cmd("colorscheme catppuccin-mocha")
	end,
}
