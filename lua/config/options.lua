local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = "80"
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.completeopt = "menuone,noinsert,noselect"
opt.list = true
opt.pumblend = 10

-- Behaviour
opt.showmode = false
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.encoding = "UTF-8"
opt.confirm = true
opt.cursorline = true
opt.pumheight = 10
opt.sidescrolloff = 8
opt.mouse = "a"
