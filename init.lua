-- Root init.lua
-- Entry point to your IDE-like LazyVim config

-- Load essential configurations
require("config.options")
require("config.autocmds")
require("config.keymaps")

-- Setup LazyVim plugins and UI
require("config.lazy")