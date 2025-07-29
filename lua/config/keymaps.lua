-- config/keymaps.lua
-- Custom keybindings

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Example keymaps (adjust to preference)
map("n", "<leader>e", ":Neotree toggle<CR>", opts)
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

-- LSP keymaps (set in on_attach if needed)
-- These can be added in your LSP setup files