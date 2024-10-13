return {
  { 'catppuccin/nvim', name = 'catppuccin',
    config = function()
      -- vim.cmd 'colorscheme catppuccin-mocha'
      -- vim.cmd 'colorscheme catppuccin-macchiato'
      -- vim.cmd 'colorscheme catppuccin-frappe'
    end,
  },

  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup({ colors = { theme = { all = { ui = { bg_gutter = "none" } } } } })
      -- vim.cmd 'colorscheme kanagawa'
      -- vim.cmd 'colorscheme kanagawa-dragon'
      vim.cmd 'colorscheme kanagawa-lotus'
    end,
  },

  {
    'Rigellute/shades-of-purple.vim',
    config = function ()
      -- vim.cmd('colorscheme shades_of_purple')
    end
  },

  {
    "olimorris/onedarkpro.nvim",
    config = function ()
      -- vim.cmd("colorscheme onedark")
    end
  },

  {
    'srcery-colors/srcery-vim',
    config = function()
      vim.g.sonokai_enable_italic = false
      -- vim.cmd.colorscheme('srcery')
    end
  },

  {
      'sainnhe/sonokai',
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.sonokai_enable_italic = false
        -- vim.cmd.colorscheme('sonokai')
      end
  },

  {
    'ferdinandrau/lavish.nvim', priority = 1000,
    config = function()
      -- require('lavish').apply 'light'
      -- require('lavish').apply 'dark'
    end,
  },

  {
    { 'rose-pine/neovim', name = 'rose-pine' },
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
    'sainnhe/gruvbox-material',
    opts = { contrast = 'soft', },
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = false
      -- vim.cmd 'colorscheme gruvbox-material'
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
    'zenbones-theme/zenbones.nvim',
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = 'rktjmp/lush.nvim',
    config = function()
      vim.g.tokyobones = { italic_comments = false, }
      vim.g.rosebones = { italic_comments = false, }
      -- vim.cmd 'colorscheme zenwritten'
      -- vim.cmd 'colorscheme zenbones'
      -- vim.cmd 'colorscheme duckbones'
      -- vim.cmd 'colorscheme tokyobones'
      -- vim.cmd 'colorscheme rosebones'

    end,
  },
}
