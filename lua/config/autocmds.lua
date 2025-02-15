-- highlight on yank
local highlight_yank_group = vim.api.nvim_create_augroup("HighlightYankGroup", {})
vim.api.nvim_create_autocmd("TextYankPost", {
	group = highlight_yank_group,
	desc = "Highlight selection on yank",
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_augroup("env", { clear = true })
vim.api.nvim_create_autocmd({ "LspAttach" }, {
	callback = function()
		vim.lsp.stop_client(vim.lsp.get_clients())
	end,
	group = "env",
	pattern = ".env",
	desc = "LspDettach bashls for .env* files",
})
