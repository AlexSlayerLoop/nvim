local config = function()
	require("nvim-treesitter.configs").setup({
		build = ":TSUpdate",
		indent = {
			enable = true,
		},
		event = {
			"BufReadPre",
			"BufNewFile",
		},
		ensure_installed = {
			"markdown",
			"json",
			"javascript",
			"typescript",
			"tsx",
			"yaml",
			"html",
			"css",
			"bash",
			"lua",
			"dockerfile",
			"gitignore",
			"python",
			"cmake",
			"c",
			"cpp",
			"vue",
			"svelte",
			"toml",
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
	})

	require("treesitter-context").setup({
		-- enable = true,
		-- max_lines = 2, -- How many lines the context should occupy
		-- min_window_height = 0, -- Minimum editor window height to enable context
		-- mode = "topline", -- Line used to calculate context position
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = config,
	dependencies = { "nvim-treesitter/nvim-treesitter-context" },
}
