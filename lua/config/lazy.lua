-- config/lazy.lua
-- Lazy.nvim bootstrap and plugin specification

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins.ui" },
    { import = "plugins.lsp" },
    { import = "plugins.coding" },
    { import = "plugins.unity" },
  },
  defaults = {
    lazy = true,
    version = false,
  },
  install = {
    colorscheme = { "tokyonight", "catppuccin", "gruvbox", "rose-pine", "habamax" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- Set the default colorscheme after plugins are loaded
vim.cmd.colorscheme("tokyonight")
