return {
	{
		'loctvl842/monokai-pro.nvim',
		config = function()
			require("monokai-pro").setup({
				transparent_background = false,
				filter = "machine",
				background_clear = {
					"nvim-tree",
					"neo-tree"
				}
			})
		end
	},

	{ 'navarasu/onedark.nvim' },
	{ "folke/tokyonight.nvim" },
}
