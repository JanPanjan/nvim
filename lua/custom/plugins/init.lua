-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- { 'metakirby5/codi.vim' },
  {
    enabled = false,
    lazy = true,
    'arminveres/md-pdf.nvim',
    branch = 'main',
    keys = {
      {
        '<leader>,',
        function()
          require('md-pdf').convert_md_to_pdf()
        end,
        desc = 'Markdown preview',
      },
    },
    opts = {},
  },

  {
    enabled = true,
    lazy = true,
    'jbyuki/nabla.nvim',
  },

  {
    enabled = false,
    lazy = true,
    'folke/zen-mode.nvim',
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
