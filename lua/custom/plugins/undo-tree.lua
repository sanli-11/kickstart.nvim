return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>Tu', vim.cmd.UndotreeToggle)
  end,
}
