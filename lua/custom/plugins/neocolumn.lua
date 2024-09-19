return {
  'ecthelionvi/NeoColumn.nvim',
  opts = {},
  config = function()
    vim.keymap.set('n', '<leader>ft', '<cmd>ToggleNeoColumn<cr>', { desc = "[F]ormat toggle NeoColumn", noremap = true, silent = true })
  end,
}
