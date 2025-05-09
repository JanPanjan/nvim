return {
	'echasnovski/mini.nvim',
	enabled = true,
	lazy = false,
	config = function()
		require('mini.ai').setup { n_lines = 500 }
		-- require('mini.surround').setup()
		-- require('mini.pairs').setup()
	end,
}

