require('mini.tabline').setup {
  show_icons = vim.g.have_nerd_font,
}

vim.keymap.set('n', '[b', '<cmd>bprevious<cr>', { desc = 'Previous file' })
vim.keymap.set('n', ']b', '<cmd>bnext<cr>', { desc = 'Next file' })
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = 'Close file' })
