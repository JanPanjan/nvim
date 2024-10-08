return {
  {
    enabled = false,
    'lervag/vimtex',
    lazy = true, -- we don't want to lazy load VimTeX
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_viewer_method = 'SumatraPDF'
      vim.g.vimtex_compiler_method = 'latexrun'
    end,
  },
}
