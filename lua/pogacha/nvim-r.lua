return {
	'jalvesaq/Nvim-R',
	enabled = true,
	lazy = true,
	ft = { 'r', 'R', 'Rmd', 'rmd', 'qmd' },
	config = function()
		vim.g.R_auto_start = 1
		vim.g.R_hl_term = 1
		vim.g.R_quiet = 1
		vim.g.R_assign = false
	end,
}
