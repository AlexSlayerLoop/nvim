return {
	"nvim-neo-tree/neo-tree.nvim",
	lazy = false,
	priority = 999,
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	opts = {
		popup_border_style = "solid", -- "double", "none", "rounded", "shadow", "single" or "solid"
		window = {
			position = "right",
			mappings = {
				["<space>"] = "none",
			},
		},
		filesystem = {
			hijack_netrw_behavior = "open_current", -- "open_current",
			use_libuv_file_watcher = true, -- This will use the OS level file watchers to detect changes
		},
		default_component_configs = {
			indent = {
				with_expanders = true,
				expander_collapsed = "",
				expander_expanded = "",
				expander_highlight = "NeoTreeExpander",
			},
		},
	},
}
