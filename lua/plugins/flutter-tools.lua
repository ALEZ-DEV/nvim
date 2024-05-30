return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  config = function()
    require("flutter-tools").setup({
      debugger = {
        enabled = true,
      },
      closing_tags = {
        highlight = "ErrorMsg",
        prefix = ">",
        enabled = true,
      },
      dev_log = {
        enabled = true,
        notify_errors = true,
      },
    })
  end,
}
