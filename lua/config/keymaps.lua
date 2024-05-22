local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Exit Insert mode
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

-- Directory Navigation
-- keymap.set("n", "<leader>m", "<cmd>NvimTreeFocus<CR>", opts)
-- keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", opts)

-- Buffer
keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", opts)
keymap.set("n", "]b", "<cmd>bnext<CR>", opts)
keymap.set("n", "[b", "<cmd>bnext<CR>", opts)

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigation Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigation Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigation Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigation Right

-- Show File-Path
keymap.set("n", "<leader>pa", "echo expand('%:p')<CR>") -- Show Full File Path

-- Window Managment
keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", "<cmd>split<CR>", opts) -- Split Horizontally

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Indenting 
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
