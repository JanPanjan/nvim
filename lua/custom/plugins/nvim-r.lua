return {
  {
    enabled = true,
    lazy = true,
    'jalvesaq/Nvim-R',
    ft = { 'r', 'rmd', 'qmd' }, -- Load the plugin for R and R Markdown files
    config = function()
      vim.g.R_auto_start = 1
      vim.g.R_hl_term = 1
      vim.g.R_quiet = 1
      vim.g.R_assign = false
    end,
  },
}
