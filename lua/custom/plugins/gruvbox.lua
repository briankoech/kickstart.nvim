return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup({
        contrast = 'hard', -- 'soft', 'medium', or 'hard'
      })

      vim.cmd.colorscheme('gruvbox')
    end,
  },
}
