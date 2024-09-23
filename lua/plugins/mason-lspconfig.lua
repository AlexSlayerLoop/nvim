local opts = {
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
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
