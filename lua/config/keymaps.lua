local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- write without Formatting | <cmd>noa[utocmd] w [file] <cr>
keymap.set("n", "<leader>W", "<cmd>noa w<cr>", { desc = "Write without formatting" })

-- Exit Insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jj" })

-- Buffers
keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", opts)
keymap.set("n", "]b", "<cmd>bnext<CR>", opts)
keymap.set("n", "[b", "<cmd>bprevious<CR>", opts)
keymap.set("n", "<leader>bq", "<cmd>CloseOtherBuffers<CR>", { desc = "Close other buffers except the current one" })

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigation Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigation Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigation Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigation Right

-- Show File-Path
keymap.set("n", "<leader>pa", "<cmd>ShowPath<CR>") -- Show Full File Path

-- Window Managment
keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", "<cmd>split<CR>", opts) -- Split Horizontally
keymap.set("n", "<leader>sx", "<cmd>close<CR>", opts) -- Close Split

-- Resize window using
keymap.set("n", "<Left>", "<cmd>vertical resize -5<CR>", { desc = "Decrease Window Width" })
keymap.set("n", "<Right>", "<cmd>vertical resize +5<CR>", { desc = "Increase Window Width" })
keymap.set("n", "<Up>", "<cmd>resize +5<CR>", { desc = "Increase Window Height" })
keymap.set("n", "<Down>", "<cmd>resize -5<CR>", { desc = "Decrease Window Height" })

-- QuickFix
keymap.set("n", "<A-p>", "<cmd>cprev<cr>", { desc = "QuickFix: prevew" })
keymap.set("n", "<A-n>", "<cmd>cnext<cr>", { desc = "QuickFix: prevew" })
keymap.set("n", "<leader>xq", "<cmd>copen<cr>", { desc = "QuickFix: open" })

-- Diagnostics
keymap.set("n", "<leader>od", vim.diagnostic.open_float, { desc = "Diagnostics: [O]pen [D]iagnostic" })

-- Move Lines
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
