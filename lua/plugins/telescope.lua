local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = require("telescope.themes").get_ivy({
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		}),
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
			fzf = {
				fuzzy = true, -- false will only do exact matching
				override_generic_sorter = true, -- override the generic sorter
				override_file_sorter = true, -- override the file sorter
				case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				-- the default case_mode is "smart_case"
			},
			["ui-select"] = {
				require("telescope.themes").get_dropdown({
					previewer = false,
					initial_mode = "normal",
				}),
			},
		},
	})
	telescope.load_extension("fzf")
	telescope.load_extension("ui-select")
end

local keys = {
	{
		"<leader>ff",
		require("telescope.builtin").find_files,
		desc = "[F]ind All [F]iles",
	},
	{
		"<leader>fh",
		require("telescope.builtin").help_tags,
		desc = "[F]ind [H]elp",
	},
	{
		"<leader>fb",
		require("telescope.builtin").buffers,
		desc = "[B]uffers",
	},
	{
		"<leader>fc",
		require("telescope.builtin").git_commits,
		desc = "[C]ommits",
	},
	{
		"<leader>fo",
		require("telescope.builtin").oldfiles,
		desc = "[O]ld Files",
	},
	{
		"<leader>fr",
		require("telescope.builtin").live_grep,
		desc = "[R]ipgrep",
	},
	{
		"<leader>fs",
		require("telescope.builtin").grep_string,
		desc = "Grep [S]tring",
	},
	{
		"<leader>fa",
		function()
			require("telescope.builtin").builtin(require("telescope.themes").get_dropdown({ previewer = false }))
		end,
		desc = "Find [A]ll Telescopes",
	},
	{
		"<leader>/",
		function()
			require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				winblend = 10,
				previewer = false,
			}))
		end,
		desc = "[/] Fuzzily search in current buffer",
	},
	{
		"<leader>s/",
		function()
			require("telescope.builtin").live_grep({ grep_open_files = true, prompt_title = "Live Grep in Open Files" })
		end,
		desc = "[S]earch [/] in Open Files",
	},
	{
		"<leader>fn",
		function()
			require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
		end,
		desc = "Search [N]eovim files",
	},
	{
		"<leader>fp",
		function()
			require("telescope.builtin").find_files({
				---@diagnostic disable-next-line: param-type-mismatch
				cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
			})
		end,
		desc = "[P]lugins Data",
	},
}

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
	},
	config = config,
	keys = keys,
}
