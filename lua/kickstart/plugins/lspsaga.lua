return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup {

      symbol_in_winbar = {
        enable = false, -- use 'Bekaboo/dropbar.nvim'
      },
    }
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
}
