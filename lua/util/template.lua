local M = {}

M.create_markdown_file = function()
	local buf_name = vim.fn.expand("%:t:r") -- Obtiene el nombre del archivo sin extension
	if buf_name == "" then
		print("Error: No se puede obtener el nombre del archivo")
	end

	local date = os.date("%Y-%m-%d")

	local content = {
		"---",
		"date: " .. date,
		"completed: false",
		"tags: ",
		"---",
		"",
		"# " .. buf_name,
		"",
		"`References`",
		"",
		"`Related`",
	}
	vim.api.nvim_buf_set_lines(0, 0, -1, false, content)
end

return M
