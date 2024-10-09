return {

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = true,
    config = function()
      -- vim.cmd 'colorscheme catppuccin-mocha'
      -- vim.cmd 'colorscheme catppuccin-frappe'
    end,
  },

  {
    'kdheepak/monochrome.nvim',
    lazy = true,
    config = function()
      -- vim.cmd 'colorscheme monochrome'
    end,
  },

  {
    'yorumicolors/yorumi.nvim',
    lazy = true,
    config = function()
      -- vim.cmd 'colorscheme yorumi'
    end,
  },

  {
    'eldritch-theme/eldritch.nvim',
    lazy = true,
    priority = 1000,
    opts = {},
    config = function()
      -- vim.cmd 'colorscheme eldritch'
    end,
  },

  {
    'ferdinandrau/lavish.nvim',
    lazy = true,
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
    lazy = true,
    config = function()
      require('onedark').setup {
	style = 'darker', -- dark, darker, cool, deep, warm, warmer
      }
    end,
  },

  {
    'mstcl/ivory',
    lazy = true,
    config = function()
      -- vim.cmd 'colorscheme ivory'
    end,
  },

  {
    'ribru17/bamboo.nvim',
    lazy = true,
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
    lazy = true,
    config = function() end,
  },

  {
    'sainnhe/gruvbox-material',
    lazy = true,
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
    lazy = true,
    priority = 1000,
    opts = {},
    config = function()
      -- vim.cmd 'colorscheme kanagawa-paper'
    end,
  },

  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    config = function()
      -- vim.cmd 'colorscheme kanagawa'
      vim.cmd 'colorscheme kanagawa-dragon'
    end,
  },

  {
    'slugbyte/lackluster.nvim',
    lazy = true,
    config = function()
      -- vim.cmd 'colorscheme lackluster-dark'
      -- vim.cmd 'colorscheme lackluster'
    end,
  },

  {
    'e-q/okcolors.nvim',
    lazy = true,
    config = function() end,
  },

  {
    'zenbones-theme/zenbones.nvim',
    lazy = true,
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
