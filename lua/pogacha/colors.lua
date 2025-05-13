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

	{

		'sainnhe/gruvbox-material',
		config = function()
			vim.cmd([[
				let g:gruvbox_material_background = 'hard'
				let g:gruvbox_material_better_performance = 1
				let g:gruvbox_material_transparent_background = 0
				let g:gruvbox_material_dim_inactive_windows = 0
				let g:gruvbox_material_visual = 'green background'
				let g:gruvbox_material_menu_selection_background = 'red'
				let g:gruvbox_material_spell_foreground = 'colored'
				let g:gruvbox_material_ui_contrast = 'low'
				let g:gruvbox_material_float_style = 'bright'
				let g:gruvbox_material_diagnostic_text_highlight = 1
				let g:gruvbox_material_diagnostic_virtual_text = 'colored'
				let g:gruvbox_material_statusline_style = 'original'
			]])
		end,
	},

	{ 'folke/tokyonight.nvim' },
	{ 'navarasu/onedark.nvim' },
}
