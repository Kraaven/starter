-- config/options.lua
-- General Neovim options

local opt = vim.opt

-- Encoding & UI
opt.encoding = "utf-8"
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.sidescrolloff = 8

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

-- Undo & Backup
opt.undofile = true
opt.swapfile = false
opt.backup = false

-- Performance
opt.updatetime = 300
opt.timeoutlen = 500

-- Mouse & Clipboard
opt.mouse = "a"
opt.clipboard = "unnamedplus"

-- Split behavior
opt.splitright = true
opt.splitbelow = true

-- Wrapping
opt.wrap = false
opt.linebreak = true

-- UI Tweaks
opt.showmode = false
opt.cmdheight = 0
opt.laststatus = 3
opt.pumheight = 10
opt.completeopt = "menuone,noselect"

-- Shorter messages
opt.shortmess:append("c")
vim.cmd.colorscheme("tokyonight")
