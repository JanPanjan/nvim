return {
	{
		'loctvl842/monokai-pro.nvim',
		config = function()
			require("monokai-pro").setup({
				transparent_background = false,
				filter = "machine",
				day_night = {
					enable = true,
					day_filter = "pro",
					night_filter = "spectrum",
				},
				indent_blankline = {
					context_highlight = "pro",
					context_start_underline = false,
				},
			})
		end
	},

	{
		'navarasu/onedark.nvim',
		config = function()
			local s = "warmer"
			require('onedark').setup({
				-- > **Options:**  dark, darker, cool, deep, warm, warmer, light
				style = s,
				transparent_background = false,
				toggle_style_key = "<leader>od",
				toggle_style_list = { s, 'light' },
				code_style = {
					keywords = 'italic'
				}
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

	{
		'folke/tokyonight.nvim',
		config = function()
			require('tokyonight').setup({
				style = 'storm',
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
				},
			})
		end
	},

	{ "Domeee/mosel.nvim" },

	{
		"slugbyte/lackluster.nvim",
		config = function()
			require("lackluster").setup({
				tweak_syntax = {
					comment = require("lackluster").color.gray4, -- or gray5
				},
				tweak_background = {
					-- normal = 'default', -- main background
					-- normal = 'none', -- transparent
				},
			})
		end
	},

	{ 'foxbunny/vim-amber' },
	{ "EdenEast/nightfox.nvim" },
	{ 'foxoman/vim-helix' },
}
