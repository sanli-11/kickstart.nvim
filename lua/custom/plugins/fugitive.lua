return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>ga', '<CMD>Git add<CR>', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gc', '<CMD>Git commit<CR>', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gr', '<CMD>Git rebase -i<CR>', { desc = 'Open Git' })
    -- vim.keymap.set('n', '<leader>gb', '<CMD>Git blame<CR>', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gl', '<CMD>Git log<CR>', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gm', '<CMD>Git mergetoolCR>', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gq', '<CMD>Git difftool ', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>ge', '<CMD>Gedit ', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gd', '<CMD>Gdiffsplit<CR>', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gu', '<CMD>Gread<CR>', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gw', '<CMD>Gwite<CR>', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gm', '<CMD>GMove<CR>', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gx', '<CMD>GDelete<CR>', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gg', '<CMD>GBrowse<CR>', { desc = 'Open Git' })

    -- local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup('ThePrimeagen_Fugitive', {})

    -- local autocmd = vim.api.nvim_create_autocmd
    -- autocmd('BufWinEnter', {
    --   group = ThePrimeagen_Fugitive,
    --   pattern = '*',
    --   callback = function()
    --     if vim.bo.ft ~= 'fugitive' then
    --       return
    --     end

    -- local bufnr = vim.api.nvim_get_current_buf()
    -- local opts = { buffer = bufnr, remap = false }
    -- vim.keymap.set('n', '<leader>gp', function()
    --   vim.cmd.Git 'push'
    -- end, opts)

    -- -- rebase always
    -- vim.keymap.set('n', '<leader>gP', function()
    --   vim.cmd.Git { 'pull', '--rebase' }
    -- end, opts)

    --     -- NOTE: It allows me to easily set the branch i am pushing and any tracking
    --     -- needed if i did not set the branch up correctly
    --     vim.keymap.set('n', '<leader>gb', ':Git push -u origin ', opts)
    --   end,
    -- })

    -- vim.keymap.set('n', 'g2', '<cmd>diffget //2<CR>')
    -- vim.keymap.set('n', 'g3', '<cmd>diffget //3<CR>')
  end,
}
