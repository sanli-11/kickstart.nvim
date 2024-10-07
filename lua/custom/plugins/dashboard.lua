return {
  'MeanderingProgrammer/dashboard.nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      header = {}, -- Dashboard header
      date_format = nil, -- Format to display date in
      directories = {}, -- List of directory paths, or functions that return paths
      -- Sections to add at bottom, these can be string references to
      -- functions in sections.lua, custom strings, or custom functions
      footer = {},
      -- Gets called after directory is changed and is provided with the
      -- directory path as an argument
      on_load = function() end,
      highlight_groups = { -- Highlight groups to use for various components
        header = 'Constant',
        icon = 'Type',
        directory = 'Delimiter',
        hotkey = 'Statement',
      },
    }
  end,
}
