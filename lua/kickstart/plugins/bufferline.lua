return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          separator_style = 'slant',
          --   indicator = {
          --     icon = '▎', -- this should be omitted if indicator style is not 'icon'
          --     style = 'icon',
          --   },
          buffer_close_icon = '',
          modified_icon = '●',
          close_icon = '',
          left_trunc_marker = '',
          right_trunc_marker = '',
          --   hover = {
          --     enabled = true,
          --     delay = 150,
          --     reveal = { 'close' },
          --   },
          offsets = {
            {
              filetype = 'neo-tree',
              text = 'File Explorer',
              text_align = 'center',
              separator = true,
            },
          },
          diagnostics = 'nvim_lsp',
          diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = ' '
            for e, n in pairs(diagnostics_dict) do
              local sym = e == 'error' and ' ' or (e == 'warning' and ' ' or '')
              s = s .. n .. sym
            end
            return s
          end,
        },
      }
    end,
  },
  {
    'tiagovla/scope.nvim',
    config = function()
      require('scope').setup {}
    end,
  },
}
