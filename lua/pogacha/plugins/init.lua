-- Plugins, ki ne potrebujejo (veliko) konfiguracije
-- mali plugins, ki ne potrebujejo svoj file
--
return {
  { 'metakirby5/codi.vim', enabled = false },

  { 'jbyuki/nabla.nvim', },

  {
    'joshuadanpeterson/typewriter',
    dependencies = { 'nvim-treesitter/nvim-treesitter', },

    config = function()
      require('typewriter').setup({
        enable_with_zen_mode = true,
        enable_horizontal_scroll = false,
      })
    end,
  },
}
