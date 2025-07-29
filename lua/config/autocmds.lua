-- config/autocmds.lua
-- Useful autocmds for quality-of-life improvements

local api = vim.api

-- Highlight on yank
api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight selection on yank",
  group = api.nvim_create_augroup("YankHighlight", { clear = true }),
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
  end,
})

-- Remove trailing whitespace on save
api.nvim_create_autocmd("BufWritePre", {
  desc = "Trim trailing whitespace",
  group = api.nvim_create_augroup("TrimWhitespace", { clear = true }),
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- Resize splits equally when window is resized
api.nvim_create_autocmd("VimResized", {
  desc = "Auto resize windows",
  group = api.nvim_create_augroup("ResizeSplits", { clear = true }),
  command = "wincmd =",
})

-- Auto reload file if changed outside of Neovim
api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
  desc = "Auto reload changed files",
  group = api.nvim_create_augroup("AutoRead", { clear = true }),
  command = "checktime",
})
