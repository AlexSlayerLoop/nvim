-- highlight on yank
local highlight_yank_group = vim.api.nvim_create_augroup("HighlightYankGroup", {})
vim.api.nvim_create_autocmd("TextYankPost", {
  group = highlight_yank_group,
  desc = "Highlight selection on yank",
  callback = function()
    vim.highlight.on_yank({ timeout = 500 })
  end,
})
