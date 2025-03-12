local config = function()
	require("lualine").setup({
		options = {
			theme = "auto",
			globalstatus = true,
			-- section_separators = { left = "", right = "" },
			-- component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			component_separators = { left = "", right = "" },
			disabled_filetypes = {
				"alpha",
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "filename", "diagnostics" },
			lualine_c = {},
			lualine_x = { "branch", "diff" },
			lualine_y = { "filetype" },
			lualine_z = { "progress", "location" },
		},
		extensions = {
			-- "oil",
			"quickfix",
			"mason",
			"lazy",
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
