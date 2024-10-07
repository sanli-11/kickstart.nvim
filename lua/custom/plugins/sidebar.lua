return {
  'sidebar-nvim/sidebar.nvim',
  dependencies = {
    'sidebar-nvim/sections-dap',
  },
  config = function()
    require('sidebar-nvim').setup {
      disable_default_keybindings = 0,
      open = true,
      side = 'right',
      initial_width = 35,
      hide_statusline = true,
      update_interval = 1000,
      sections = {
        -- 'buffers',
        -- 'git',
        'symbols',
        'diagnostics',
        'todos',
        require 'dap-sidebar-nvim.breakpoints',
      },
      section_separator = { '', '---------------------', '' },
      section_title_separator = { '' },
      -- ['git'] = {
      --   icon = '',
      -- },
      symbols = {
        icon = 'ƒ',
      },
      ['diagnostics'] = {
        icon = '',
      },
      todos = {
        icon = '',
        ignored_paths = { '~' },
        initially_closed = false,
      },
      dap = {
        breakpoints = {
          icon = '🔍',
        },
      },
      bindings = nil,
    }
    vim.keymap.set('n', '<leader>TS', '<cmd>SidebarNvimToggle<CR>')
    vim.keymap.set('n', '<leader>Su', '<cmd>SidebarNvimUpdate<CR>')
    vim.keymap.set('n', '<leader>Sm', '<cmd>SidebarNvimResize 35<CR>')
    vim.keymap.set('n', '<leader>SM', '<cmd>SidebarNvimResize 250<CR>')
    vim.keymap.set('n', '<leader>Sf', '<cmd>SidebarNvimFocus<CR>')
  end,
}
