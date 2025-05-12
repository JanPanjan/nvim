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

	{
		'navarasu/onedark.nvim',
		config = function()
			require('onedark').setup({
				-- > **Options:**  dark, darker, cool, deep, warm, warmer, light
				style = "cool",
				transparent_background = false,
			})
		end
	},

	{ 'folke/tokyonight.nvim' },
	{ 'Domeee/mosel.nvim' },
}
