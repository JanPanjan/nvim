
return {
	'nvim-telescope/telescope.nvim',
	enabled = true,
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', },
		{ 'nvim-telescope/telescope-ui-select.nvim' },
		{ 'nvim-tree/nvim-web-devicons',              enabled = vim.g.have_nerd_font },
	},
}
