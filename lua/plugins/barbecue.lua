return {
	"utilyre/barbecue.nvim",
	event = "ColorScheme",
	name = "barbecue",
	version = "*",
	opts = {
		-- theme = "solarized-osaka",
	},
	dependencies = {
		"neovim/nvim-lspconfig",
		{
			"SmiteshP/nvim-navic",
			init = function()
				vim.g.navic_silence = true
			end,
		},
		"nvim-tree/nvim-web-devicons",
	},
}
