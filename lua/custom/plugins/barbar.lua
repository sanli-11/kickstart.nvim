return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  version = '^1.0.0',
  opts = {
    animation = true, -- Enable/disable animations
    auto_hide = false, -- Automatically hide the tabline when there are this many buffers left.
    clickable = true, -- Enable/disable current/total tabpages indicator (top right corner)
    -- Excludes buffers from the tabline
    exclude_ft = {},
    exclude_name = { 'package.json' },
    -- A buffer to this direction will be focused (if it exists) when closing the current buffer.
    -- Valid options are 'left' (the default), 'previous', and 'right'
    focus_on_close = 'left',
    hide = { -- Hide inactive buffers and file extensions. Other options are `alternate`, `current`, and `visible`.
      extensions = true,
      inactive = true,
    },
    highlight_alternate = false, -- Disable highlighting alternate buffers
    highlight_inactive_file_icons = false, -- Disable highlighting file icons in inactive buffers
    highlight_visible = true, -- Enable highlighting visible buffers
    icons = { -- Configure the base icons on the bufferline.
      -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
      buffer_index = false,
      buffer_number = false,
      button = '',
      diagnostics = { -- Enables / disables diagnostic symbols
        [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'ﬀ' },
        [vim.diagnostic.severity.WARN] = { enabled = true },
        [vim.diagnostic.severity.INFO] = { enabled = true },
        [vim.diagnostic.severity.HINT] = { enabled = true },
      },
      gitsigns = {
        added = { enabled = true, icon = '+' },
        changed = { enabled = true, icon = '~' },
        deleted = { enabled = true, icon = '-' },
      },
      filetype = { -- Sets the icon's highlight group.
        custom_colors = false, -- If false, will use nvim-web-devicons colors
        enabled = true, -- Requires `nvim-web-devicons` if `true`
      },
      separator = { left = '▎', right = '' },
      separator_at_end = true, -- If true, add an additional separator at the end of the buffer list
      -- Configure the icons on the bufferline when modified or pinned.
      -- Supports all the base icon options.
      modified = { button = '●' },
      pinned = { button = '', filename = true },
      preset = 'default', -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
      -- Configure the icons on the bufferline based on the visibility of a buffer.
      -- Supports all the base icon options, plus `modified` and `pinned`.
      alternate = { filetype = { enabled = false } },
      current = { buffer_index = true },
      inactive = { button = '×' },
      visible = { modified = { buffer_number = false } },
    },
    -- If true, new buffers will be inserted at the start/end of the list.
    -- Default is to insert after current buffer.
    insert_at_end = false,
    insert_at_start = false,
    -- New buffer letters are assigned in this order. This order is
    -- optimal for the qwerty keyboard layout but might need adjustment
    -- for other layouts.
    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
    minimum_padding = 1, -- Sets the minimum padding width with which to surround each tab
    maximum_padding = 1, -- Sets the maximum padding width with which to surround each tab
    minimum_length = 0, -- Sets the minimum buffer name length.
    maximum_length = 30, -- Sets the maximum buffer name length.
    -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
    -- where X is the buffer number. But only a static string is accepted here.
    no_name_title = nil,
    -- If set, the letters for each buffer in buffer-pick mode will be
    -- assigned based on their name. Otherwise or in case all letters are
    -- already assigned, the behavior is to assign letters in order of
    -- usability (see order below)
    semantic_letters = true,
    sidebar_filetypes = { -- Set the filetypes which barbar will offset itself for
      NvimTree = true,
      undotree = {
        text = 'undotree',
        align = 'center', -- *optionally* specify an alignment (either 'left', 'center', or 'right')
      },
      ['neo-tree'] = { event = 'BufWipeout' },
      -- Outline = { event = 'BufWinLeave', text = 'symbols-outline', align = 'right' },
    },
    sort = { --sorting options
      ignore_case = true, -- tells barbar to ignore case differences while sorting buffers
    },
    tabpages = true, -- Enable/disable current/total tabpages indicator (top right corner)
  },
  config = function()
    -- Move to previous/next
    vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', { desc = 'Move to Previous Buffer' })
    vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', { desc = 'Move to Next Buffer' })
    -- Re-order to previous/next
    vim.keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', { desc = 'Move Buffer Left' })
    vim.keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>', { desc = 'Move Buffer Right' })
    -- Goto buffer in position...
    vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', { desc = 'Go to Buffer 1' })
    vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', { desc = 'Go to Buffer 2' })
    vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', { desc = 'Go to Buffer 3' })
    vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', { desc = 'Go to Buffer 4' })
    vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', { desc = 'Go to Buffer 5' })
    vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', { desc = 'Go to Buffer 6' })
    vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', { desc = 'Go to Buffer 7' })
    vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', { desc = 'Go to Buffer 8' })
    vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', { desc = 'Go to Buffer 9' })
    vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', { desc = 'Go to Last Buffer' })
    -- Pin/unpin buffer
    vim.keymap.set('n', '<A-~>', '<Cmd>BufferPin<CR>', { desc = 'Pin/Unpin Buffer' })
    -- Goto pinned/unpinned buffer
    vim.keymap.set('n', '<A-=>', '<Cmd>BufferGotoPinned<CR>', { desc = 'Go to Pinned Buffer' })
    vim.keymap.set('n', '<A-->', '<Cmd>BufferGotoUnpinned<CR>', { desc = 'Go to Unpinned Buffer' })
    -- Close buffer
    vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', { desc = 'Close Buffer' })
    -- Wipeout buffer
    -- vim.keymap.set('n', '<A-w>w', '<Cmd>BufferWipeout<CR>', { desc = "Wipeout Buffer" })
    -- Close commands
    vim.keymap.set('n', '<A-w>q', '<Cmd>BufferCloseAllButCurrent<CR>', { desc = 'Close All Other Buffers' })
    vim.keymap.set('n', '<A-w>p', '<Cmd>BufferCloseAllButPinned<CR>', { desc = 'Close Unpinned Buffers' })
    vim.keymap.set('n', '<A-w>h', '<Cmd>BufferCloseBuffersLeft<CR>', { desc = 'Close All Buffer to Left' })
    vim.keymap.set('n', '<A-w>l', '<Cmd>BufferCloseBuffersRight<CR>', { desc = 'Close All Buffer to Right' })
    vim.keymap.set('n', '<A-w>c', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', { desc = 'Close All Other/Unpinned Buffers' })
    -- Magic buffer-picking mode
    vim.keymap.set('n', '<A-p>', '<Cmd>BufferPick<CR>', { desc = 'Search Buffer' })
    -- Sort automatically by...
    vim.keymap.set('n', '<A-o>b', '<Cmd>BufferOrderByBufferNumber<CR>', { desc = 'Order Buffers by Number' })
    vim.keymap.set('n', '<A-o>n', '<Cmd>BufferOrderByName<CR>', { desc = 'Order Buffers by Name' })
    vim.keymap.set('n', '<A-o>d', '<Cmd>BufferOrderByDirectory<CR>', { desc = 'Order Buffers by Dir' })
    vim.keymap.set('n', '<A-o>l', '<Cmd>BufferOrderByLanguage<CR>', { desc = 'Order Buffers by Lang' })
    vim.keymap.set('n', '<A-o>w', '<Cmd>BufferOrderByWindowNumber<CR>', { desc = 'Order Buffers by Window Number' })
    -- Other:
    -- :BarbarEnable - enables barbar (enabled by default)
    -- :BarbarDisable - very bad command, should never be used
  end,
}
