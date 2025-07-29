-- config/lazy.lua
-- Bootstrap Lazy.nvim and load categorized plugin sets

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
    colorscheme = vim.g.colorscheme_list or { "tokyonight", "catppuccin", "gruvbox", "rose-pine", "habamax" },
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

-- Optional: Command to cycle themes
pcall(dofile, vim.fn.stdpath("config") .. "/lua/config/colorscheme-cycle.lua")
