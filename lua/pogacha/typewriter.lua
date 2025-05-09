return {
	'joshuadanpeterson/typewriter',
	enabled = true,
	lazy = false,
	dependencies = {
		'nvim-treesitter/nvim-treesitter',
	},
	config = function()
		require('typewriter').setup({
			enable_horizontal_scroll = false
		})
	end
}
