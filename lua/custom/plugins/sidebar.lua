return {
  'sidebar-nvim/sidebar.nvim',
  config = function()
    require('sidebar-nvim').setup {
      disable_default_keybindings = 0,
      open = true,
      side = 'right',
      initial_width = 35,
      hide_statusline = false,
      update_interval = 1000,
      sections = { 'git', 'symbols', 'diagnostics', 'todos' },
      section_separator = { '', '-----', '' },
      section_title_separator = { '' },
      todos = {
        icon = '',
        ignored_paths = { '~' },
        initially_closed = false,
      },
      bindings = nil,
    }
    vim.keymap.set('n', '<C-s>t', '<cmd>SidebarNvimToggle<CR>')
    vim.keymap.set('n', '<C-s>u', '<cmd>SidebarNvimUpdate<CR>')
    vim.keymap.set('n', '<C-s>m', '<cmd>SidebarNvimResize 35<CR>')
    vim.keymap.set('n', '<C-s>M', '<cmd>SidebarNvimResize 100<CR>')
    vim.keymap.set('n', '<C-s>f', '<cmd>SidebarNvimFocus<CR>')
  end,
}
