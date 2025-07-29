-- plugins/unity.lua
return {
  -- Shader syntax highlighting (HLSL, CG, Unity shaderlab)
  {
    "tikhomirov/vim-glsl",
    ft = { "glsl", "vert", "frag", "geom", "comp" },
  },
  {
    "beyondmarc/hlsl.vim",
    ft = { "hlsl", "cginc" },
  },
  {
    "TimUntersberger/neovim-tasks",
    ft = { "cs", "shaderlab" },
    opts = {},
  },

  -- Optional: Unity Debugging (via DAP + netcoredbg)
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      dap.adapters.coreclr = {
        type = "executable",
        command = "netcoredbg",
        args = { "--interpreter=vscode" },
      }

      dap.configurations.cs = {
        {
          type = "coreclr",
          name = "Launch Unity",
          request = "launch",
          program = function()
            return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug/", "file")
          end,
        },
      }
    end,
  },
}
