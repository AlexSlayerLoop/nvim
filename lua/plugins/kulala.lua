return {
	"mistweaverco/kulala.nvim",
	lazy = false,
	-- opts = {},
	config = function()
		require("kulala").setup({
			global_keymaps = true,
			ui = {
				split_direction = "horizontal",
			},
		})

		vim.filetype.add({
			extension = {
				["http"] = "http",
			},
		})
	end,
}
