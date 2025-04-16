return {
  'moonbit-community/moonbit.nvim',
  ft = { 'moonbit' },
  opts = {
    -- optionally disable the treesitter integration
    treesitter =  {
      enabled = true,
      -- Set false to disable automatic installation and updating of parsers.
      auto_install = true
    },
    -- configure the language server integration
    -- set `lsp = false` to disable the language server integration
    lsp = {
      -- provide an `on_attach` function to run when the language server starts
      on_attach = function(client, bufnr) end,
      -- provide client capabilities to pass to the language server
      capabilities = vim.lsp.protocol.make_client_capabilities(),
    }
  },
}
