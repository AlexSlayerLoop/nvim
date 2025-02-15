local detail = false
return {
	{
		"stevearc/oil.nvim",
		lazy = false,

		---@module 'oil'
		---@type oil.SetupOpts
		opts = {
			win_options = {
				signcolumn = "yes:2",
				relativenumber = false,
				number = false,
			},
			columns = {
				"icon",
			},
			keymaps = {
				["<C-j>"] = { "actions.preview_scroll_down", mode = "n" },
				["<C-k>"] = { "actions.preview_scroll_up", mode = "n" },
				["gd"] = {
					desc = "Toggle file detail view",
					callback = function()
						detail = not detail
						if detail then
							require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
						else
							require("oil").set_columns({ "icon" })
						end
					end,
				},
			},
			view_options = {
				show_hidden = true,
				is_always_hidden = function(name, _)
					return name == ".git" or name == ".."
				end,
			},
			float = {
				-- Padding around the floating window
				padding = 2,
				max_width = 0,
				max_height = math.floor(vim.o.lines * 0.5),
				border = "rounded", --solid
				win_options = {
					winblend = 0,
				},
				-- preview_split: Split direction: "auto", "left", "right", "above", "below".
				preview_split = "auto",
				-- This is the config that will be passed to nvim_open_win.
				override = function(conf)
					conf.row = math.floor((vim.o.lines * 0.5) - 4)
					return conf
				end,
			},
		},
		keys = {
			{
				"\\",
				function()
					require("oil").toggle_float()
				end,
				desc = "Open parent directory",
			},
		},
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
	},
	{
		"refractalize/oil-git-status.nvim",
		lazy = false,
		config = true,
		dependencies = { "stevearc/oil.nvim" },
	},
}
