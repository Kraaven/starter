-- plugins/coding.lua
-- Productivity and coding enhancements

return {
  -- Comment toggling
  {
    "numToStr/Comment.nvim",
    opts = {},
  },

  -- Auto pairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  -- Surround text objects
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {},
  },

  -- Git signs in gutter
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },

  -- Indentation guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = { char = "│" },
      scope = { enabled = false },
    },
  },

  -- Treesitter for syntax highlighting and more
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "lua",
        "typescript",
        "html",
        "css",
        "json",
        "bash",
      },
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
    },
  },
}
