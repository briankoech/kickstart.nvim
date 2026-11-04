vim.pack.add { 'https://github.com/ellisonleao/gruvbox.nvim' }

require('gruvbox').setup {
  contrast = 'hard', -- 'soft', 'medium', or 'hard'
}

vim.cmd.colorscheme 'gruvbox'
