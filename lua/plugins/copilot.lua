return {
	{
		"zbirenbaum/copilot.lua",
		enabled = false,
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				-- how to configure copilot
				suggestion = { auto_trigger = true },
			})
		end,
	},
}
