-- config/autocmds.lua
-- Useful autocmds for better UX

local api = vim.api

-- Highlight on yank
api.nvim_create_autocmd("TextYankPost", {
  group = api.nvim_create_augroup("YankHighlight", { clear = true }),
  desc = "Highlight selection on yank",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
  end,
})

-- Trim trailing whitespace on save
api.nvim_create_autocmd("BufWritePre", {
  group = api.nvim_create_augroup("TrimWhitespace", { clear = true }),
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- Resize splits evenly when window is resized
api.nvim_create_autocmd("VimResized", {
  group = api.nvim_create_augroup("ResizeSplits", { clear = true }),
  command = "wincmd =",
})

-- Reload file if changed outside of Neovim
api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
  group = api.nvim_create_augroup("AutoRead", { clear = true }),
  command = "checktime",
})
