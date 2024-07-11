-- show current path
local function show_path()
	local current_path = vim.fn.expand("%:p")
	print("Current Path: " .. current_path)
end
vim.api.nvim_create_user_command("ShowPath", show_path, { nargs = "?" })

-- Close all other buffers
local function close_other_buffers()
	local current_buf = vim.api.nvim_get_current_buf()
	local buffers = vim.api.nvim_list_bufs()

	for _, buf in ipairs(buffers) do
		if buf ~= current_buf and vim.api.nvim_buf_is_loaded(buf) then
			vim.api.nvim_buf_delete(buf, { force = true })
		end
	end
end
vim.api.nvim_create_user_command("CloseOtherBuffers", close_other_buffers, { nargs = "?" })
