vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/pmizio/typescript-tools.nvim',
}

require('typescript-tools').setup {
  settings = {
    -- Separate type-checking and syntax diagnostics for faster feedback
    separate_diagnostic_server = true,
    expose_as_code_action = 'all',
    tsserver_file_preferences = {
      includeInlayParameterNameHints = 'all',
      includeInlayVariableTypeHints = true,
    },
  },
}
