-- local ruff = vim.g.lazyvim_python_ruff or "ruff"

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- ruff = {
      --   cmd_env = { RUFF_TRACE = "messages" },
      --   init_options = {
      --     settings = {
      --       logLevel = "error",
      --     },
      --   },
      -- },
      -- ruff_lsp = {},
      basedpyright = {
        settings = {
          basedpyright = {
            analysis = {
              diagnosticSeverityOverrides = {
                reportUnknownVariableType = "none",
                reportUnknownMemberType = "none",
                reportUnknownParameterType = "none",
                reportUnknownArgumentType = "none",
                reportUninitializedInstanceVariable = "none",
                reportUnannotatedClassAttribute = "none",
                reportReturnType = "none",
                reportMissingParameterType = "none",
                reportUnusedCallResult = "none",
              },
            },
          },
        },
      },
    },
    -- setup = {
    --   [ruff] = function()
    --     Snacks.util.lsp.on({ name = ruff }, function(_, client)
    --       -- Disable hover in favor of Pyright
    --       client.server_capabilities.hoverProvider = false
    --     end)
    --   end,
    -- },
  },
}
