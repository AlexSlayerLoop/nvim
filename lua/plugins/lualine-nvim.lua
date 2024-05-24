local config = function()
	require("lualine").setup({
		options = {
			theme = "auto",
			globalstatus = true,
      section_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' }
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "buffers" },
      lualine_c = {},
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
