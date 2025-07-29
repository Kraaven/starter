-- plugins/ui.lua
return {
  -- Colorschemes
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {},
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {},
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    opts = {},
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "auto",
        section_separators = "",
        component_separators = "|",
      },
    },
  },

  -- Icons
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- Notifications
  {
    "rcarriga/nvim-notify",
    config = function()
      vim.notify = require("notify")
    end,
  },

  -- File Explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },
}
