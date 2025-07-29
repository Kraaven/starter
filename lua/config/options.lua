-- config/options.lua
-- Editor behavior, UI and performance settings

local opt = vim.opt

-- General
opt.encoding = "utf-8"
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.undofile = true
opt.swapfile = false
opt.backup = false

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.cmdheight = 0
opt.laststatus = 3
opt.showmode = false
opt.pumheight = 10
opt.completeopt = "menuone,noselect"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.linebreak = true

-- Tabs & Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Performance
opt.updatetime = 300
opt.timeoutlen = 500
opt.shortmess:append("c")
-- config/options.lua
-- Editor behavior, UI and performance settings

local opt = vim.opt

-- General
opt.encoding = "utf-8"
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.undofile = true
opt.swapfile = false
opt.backup = false

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.cmdheight = 0
opt.laststatus = 3
opt.showmode = false
opt.pumheight = 10
opt.completeopt = "menuone,noselect"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.linebreak = true

-- Tabs & Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Performance
opt.updatetime = 300
opt.timeoutlen = 500
opt.shortmess:append("c")
