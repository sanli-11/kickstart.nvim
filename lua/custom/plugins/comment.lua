return {
  'numToStr/Comment.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring',
  },
  opt = {},
  config = function()
    local comment = require 'Comment'
    local ts_context_commentstring = require 'ts_context_commentstring.integrations.comment_nvim'

    comment.setup {
      padding = true, ---Add a space b/w comment and the line
      sticky = true, ---Whether the cursor should stay at its position
      ignore = '^$', ---Lines to be ignored while (un)comment
      toggler = { ---LHS of toggle mappings in NORMAL mode
        line = 'gcc', ---Line-comment toggle keymap
        block = 'gbc', ---Block-comment toggle keymap
      },
      opleader = { ---LHS of operator-pending mappings in NORMAL and VISUAL mode
        line = 'gc', ---Line-comment keymap
        block = 'gb', ---Block-comment keymap
      },
      extra = { ---LHS of extra mappings
        above = 'gcK', ---Add comment on the line above
        below = 'gcJ', ---Add comment on the line below
        eol = 'gcA', ---Add comment at the end of line
      },
      mappings = { ---Enable keybindings
        basic = true, ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        extra = true, ---Extra mapping
      },
      ---Function to call before (un)comment
      pre_hook = ts_context_commentstring.create_pre_hook(), -- for commenting tsx, jsx, svelte, html files
      ---Function to call after (un)comment
      post_hook = function() end,
    }
  end,
}
