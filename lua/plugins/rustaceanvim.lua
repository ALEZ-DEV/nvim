return {
  "mrcjkb/rustaceanvim",
  version = "^6", -- Recommended
  lazy = false, -- This plugin is already lazy
  init = function()
    require("lazyvim.util").lsp.on_attach(function(_, buffer)
      -- stylua: ignore
      vim.keymap.set("n", "<leader>cb", function()
        vim.g.autoformat = false
        vim.notify("Rust formatter disabled")
      end, { buffer = buffer, desc = "Disable formatting" })

      vim.keymap.set("n", "<leader>ce", function()
        vim.g.autoformat = true
        vim.notify("Rust formatter enabled")
      end, { buffer = buffer, desc = "Enable formatting" })
    end)
  end,
}
