return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,

	---@type snacks.Config
	opts = {
		-- not used
		dashboard = { enabled = false },
		quickfile = { enabled = false },
		scroll = { enabled = false },
		words = { enabled = false },
		input = { enabled = false },
		image = { enabled = false },

		-- used
		bigfile = { enabled = true },
		statuscolumn = { enabled = true },
		indent = { enabled = true },
		notifier = { enabled = true },
		git = {},
	},
	dependencies = { "echasnovski/mini.icons", opts = {} },
}
