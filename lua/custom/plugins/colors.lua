return {

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      -- vim.cmd 'colorscheme catppuccin-mocha'
      -- vim.cmd 'colorscheme catppuccin-frappe'
    end,
  },

  {
    'kdheepak/monochrome.nvim',
    config = function()
      -- vim.cmd 'colorscheme monochrome'
    end,
  },

  {
    'yorumicolors/yorumi.nvim',
    config = function()
      -- vim.cmd 'colorscheme yorumi'
    end,
  },

  {
    'eldritch-theme/eldritch.nvim',
    priority = 1000,
    opts = {},
    config = function()
      -- vim.cmd 'colorscheme eldritch'
    end,
  },

  {
    'ferdinandrau/lavish.nvim',
    priority = 1000,
    config = function()
      -- require('lavish').apply 'light'
      -- require('lavish').apply 'dark'
    end,
  },

  {
    { 'rose-pine/neovim', name = 'rose-pine' },
  },

  {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').setup {
	style = 'darker', -- dark, darker, cool, deep, warm, warmer
      }
    end,
  },

  {
    'mstcl/ivory',
    config = function()
      -- vim.cmd 'colorscheme ivory'
    end,
  },

  {
    'ribru17/bamboo.nvim',
    config = function()
      require('bamboo').setup {
	style = 'vulgaris', -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
	transparent = false, -- Show/hide background
      }
      -- vim.cmd 'colorscheme bamboo-multiplex'
    end,
  },

  {
    'ptdewey/darkearth-nvim',
    config = function() end,
  },

  {
    'sainnhe/gruvbox-material',
    opts = {
      contrast = 'soft',
    },
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      -- vim.cmd 'colorscheme gruvbox-material'
    end,
  },

  {
    'sho-87/kanagawa-paper.nvim',
    priority = 1000,
    opts = {},
    config = function()
      -- vim.cmd 'colorscheme kanagawa-paper'
    end,
  },

  {
    'rebelot/kanagawa.nvim',
    config = function()
      -- vim.cmd 'colorscheme kanagawa'
      vim.cmd 'colorscheme kanagawa-dragon'
      -- vim.cmd 'colorscheme kanagawa-lotus'
    end,
  },

  {
    'slugbyte/lackluster.nvim',
    config = function()
      -- vim.cmd 'colorscheme lackluster-dark'
      -- vim.cmd 'colorscheme lackluster'
    end,
  },

  {
    'e-q/okcolors.nvim',
    config = function() end,
  },

  {
    'zenbones-theme/zenbones.nvim',
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = 'rktjmp/lush.nvim',
    opts = {},
    config = function()
      -- vim.cmd 'colorscheme zenwritten'
      -- vim.cmd 'colorscheme zenbones'
      -- vim.cmd 'colorscheme duckbones'
      -- vim.cmd 'colorscheme tokyobones'
    end,
  },
}
