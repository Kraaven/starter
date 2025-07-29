-- plugins/unity.lua
-- Unity and C# tooling (OmniSharp, Debugging)

return {
  -- Unity LSP (OmniSharp)
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.omnisharp = {
        cmd = { "omnisharp" },
        enable_roslyn_analyzers = true,
        organize_imports_on_format = true,
        enable_import_completion = true,
      }
    end,
  },

  -- Debug Adapter Protocol for Unity/C#
  {
    "mfussenegger/nvim-dap",
    optional = true,
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup()
    end,
  }
}
