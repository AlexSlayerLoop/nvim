return {
	{
		"williamboman/mason.nvim",
		cmd = "Mason",
		event = "BufReadPre",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"efm",
				"lua_ls",
				"pyright",
				"bashls",
				"ts_ls",
				"emmet_ls",
				"jsonls",
				"dockerls",
				"clangd",
			},
			automatic_installation = true,
		},
		event = "BufReadPre",
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		lazy = false,
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"stylua",
					"luacheck",
					"black",
					"flake8",
					"clang-format",
					"cpplint",
					"eslint_d",
					"prettierd",
					"shfmt",
					"shellcheck",
					"fixjson",
					"hadolint",
				},
			})
		end,
	},
}
