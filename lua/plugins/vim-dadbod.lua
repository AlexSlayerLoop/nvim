return {
	{ "tpope/vim-dadbod", lazy = false },
	{
		"kristijanhusak/vim-dadbod-ui",
		lazy = false,
		keys = {
			{ "<leader>od", "<cmd>tabnew | DBUI<cr>" },
		},
	},
	{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" } },
}
