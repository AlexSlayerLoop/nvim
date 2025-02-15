return {
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{
		"folke/lazydev.nvim",
		lazy = false,
		ft = "lua",
		opts = {
			library = {
				-- See the configuration section for more details
				-- Load luvit types when the `vim.uv` word is found
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				"lazy.nvim",
				"snacks.nvim",
				-- "oil.nvim",
				-- "telescope.nvim",
			},
		},
	},
}
