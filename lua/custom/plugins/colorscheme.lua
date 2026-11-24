vim.pack.add {
  'https://github.com/ellisonleao/gruvbox.nvim',
  'https://github.com/folke/tokyonight.nvim',
}

require('gruvbox').setup { contrast = 'hard' }
require('tokyonight').setup {
  style = 'moon',
  on_colors = function() end,
  on_highlights = function() end,
}

vim.cmd.colorscheme 'tokyonight-night'
