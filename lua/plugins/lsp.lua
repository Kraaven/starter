-- plugins/lsp.lua
return {
  -- LSP installer
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {},
  },

  -- LSP config support
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "omnisharp", "lua_ls" },
      })

      local lspconfig = require("lspconfig")

      require("mason-lspconfig").setup_handlers({
        function(server)
          lspconfig[server].setup({})
        end,
        -- Custom handler for OmniSharp
        ["omnisharp"] = function()
          lspconfig.omnisharp.setup({
            cmd = { "omnisharp" },
            enable_roslyn_analyzers = true,
            organize_imports_on_format = true,
            enable_import_completion = true,
          })
        end,
      })
    end,
  },

  -- Inline LSP progress and messages
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    opts = {},
  },

  -- LSP icons in completion and diagnostics
  {
    "onsails/lspkind.nvim",
    lazy = true,
  },
}
