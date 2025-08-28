return {
  "xeluxee/competitest.nvim",
  dependencies = "MunifTanjim/nui.nvim",
  config = function()
    require("competitest").setup()
  end,
  opts = {
    start_receiving_persistently_on_setup = true,
  },
}
