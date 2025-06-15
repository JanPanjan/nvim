return {
	'L3MON4D3/LuaSnip',
	lazy = false,
	dependencies = {
		'rafamadriz/friendly-snippets',
		config = function()
			require('luasnip').config.setup({ enable_autosnippets = true })
			require('luasnip.loaders.from_vscode').lazy_load()
			require('luasnip.loaders.from_lua').load({
				paths = {
					'C:/Users/joene/AppData/Local/nvim_configs/nvim_min/lua/snippets'
				}
			})
		end,
	}
}
