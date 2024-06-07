local keys = {
	{ "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<CR>", desc = "Buffer search" },
	{ "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buffers" },
	{ "<leader>fc", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
	{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find All Files" },
	{ "<leader>fo", "<cmd>Telescope oldfiles<CR>", desc = "Old Files" },
	{ "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Ripgrep" },
	{ "<leader>fs", "<cmd>Telescope grep_string<CR>", desc = "Grep String" },
}

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			live_grep = {
				file_ignore_patterns = { "node_modules", ".venv", ".git" },
				additional_args = function(_)
					return { "--hidden", "--no-ignore-vcs" }
				end,
				hidden = true,
				no_ignore = true,
			},
			find_files = {
				file_ignore_patterns = { "node_modules", ".venv", ".git" },
				additional_args = function(_)
					return { "--hidden", "--no-ignore-vcs" }
				end,
				hidden = true,
				no_ignore = true,
			},
		},
		extensions = {
			"fzf",
		},
	})
	telescope.load_extension("fzf")
end

return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	config = config,
	keys = keys,
}
