return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      nginx = { "nginxfmt" },
      go = { "golines" },
      python = { "black", "isort" },
    },

    formatters = {
      nginx_config_formatter = {
        command = "nginxfmt",
        args = { "$FILENAME" },
        stdin = false,
      },
      -- golines = {
      --   command = "golines",
      --   args = {
      --     "--max-len=100",
      --     "--base-formatter=gofumpt",
      --   },
      -- },
    },
  },
}
