local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local themes = require("telescope.themes")

local config = function()
	telescope.setup({
		defaults = themes.get_ivy({
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
					["<esc>"] = "close",
				},
			},
		}),
		pickers = {
			live_grep = {
				file_ignore_patterns = { "node_modules", ".venv", "^.git/", ".obsidian", ".DS_Store" },
				additional_args = function(_)
					return { "--hidden", "--no-ignore-vcs" }
				end,
				hidden = true,
				no_ignore = true,
			},
			find_files = {
				file_ignore_patterns = { "node_modules", ".venv", "^.git/", ".obsidian", ".DS_Store" },
				additional_args = function(_)
					return { "--hidden", "--no-ignore-vcs" }
				end,
				hidden = true,
				no_ignore = true,
			},
			buffers = {
				mappings = {
					i = {
						["<C-d>"] = actions.delete_buffer + actions.move_to_top,
					},
					n = {
						["d"] = actions.delete_buffer,
					},
				},
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
				themes.get_dropdown({
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
		function()
			builtin.find_files()
		end,
		desc = "[F]ind All [F]iles",
	},
	{
		"<leader>fh",
		function()
			builtin.help_tags()
		end,
		desc = "[F]ind [H]elp",
	},
	{
		"<leader>fb",
		function()
			builtin.buffers()
		end,
		desc = "[B]uffers",
	},
	{
		"<leader>fc",
		function()
			builtin.git_commits()
		end,
		desc = "[C]ommits",
	},
	{
		"<leader>fo",
		function()
			builtin.oldfiles()
		end,
		desc = "[O]ld Files",
	},
	{
		"<leader>fr",
		function()
			builtin.live_grep()
		end,
		desc = "[R]ipgrep",
	},
	{
		"<leader>fs",
		function()
			builtin.grep_string()
		end,
		desc = "Grep [S]tring",
	},
	{
		"<leader>fa",
		function()
			builtin.builtin(themes.get_dropdown({ previewer = false }))
		end,
		desc = "Find [A]ll Telescopes",
	},
	{
		"<leader>/",
		function()
			builtin.current_buffer_fuzzy_find(themes.get_dropdown({
				winblend = 10,
				previewer = false,
			}))
		end,
		desc = "[/] Fuzzily search in current buffer",
	},
	{
		"<leader>s/",
		function()
			builtin.live_grep({ grep_open_files = true, prompt_title = "Live Grep in Open Files" })
		end,
		desc = "[S]earch [/] in Open Files",
	},
	{
		"<leader>fn",
		function()
			builtin.find_files({
				cwd = vim.fn.stdpath("config"),
			})
		end,
		desc = "Search [N]eovim files",
	},
	{
		"<leader>fp",
		function()
			builtin.find_files({
				---@diagnostic disable-next-line: param-type-mismatch
				cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
			})
		end,
		desc = "[P]lugins Data",
	},
	{
		"<leader>fw",
		function()
			builtin.find_files({
				---@diagnostic disable-next-line: param-type-mismatch
				cwd = "~/Documents/Obsidian/MyVault",
			})
		end,
		desc = "[F]ind In [W]iki",
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
