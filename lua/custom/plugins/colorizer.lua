return {
  'norcalli/nvim-colorizer.lua',
  opts = {
    -- Attach to certain Filetypes, add special configuration for `html`
    -- Use `background` for everything else.
    'css',
    'javascript',
    html = {
      mode = 'foreground',
    },
  },
}
