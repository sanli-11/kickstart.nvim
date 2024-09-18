return {
  'iamcco/markdown-preview.nvim',
  enabled = false,
  build = function()
    require('lazy').load { plugins = { 'markdown-preview.nvim' } }
    vim.fn['mkdp#util#install']()
  end,
  ft = 'markdown',
  config = function()
    vim.keymap.set('n', '<leader>m', function()
      if vim.bo.filetype == 'markdown' then
        vim.cmd 'MarkdownPreviewToggle'
      else
        vim.notify('Only available in markdown', vim.log.levels.WARN, { title = 'Markdown-Preview' })
      end
    end, { desc = 'Markdown Preview', silent = true })
  end,
}
