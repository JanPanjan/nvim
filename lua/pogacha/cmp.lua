return {
	{ 'hrsh7th/cmp-buffer',       enabled = true, lazy = false },
	{ 'hrsh7th/cmp-path',         enabled = true, lazy = false },
	{ 'saadparwaiz1/cmp_luasnip', enabled = true, lazy = false },
	{ 'hrsh7th/cmp-nvim-lsp',     enabled = true, lazy = false },
	{ 'hrsh7th/cmp-nvim-lua',     enabled = true, lazy = false },
	{ 'hrsh7th/cmp-cmdline',      enabled = true, lazy = false },
	{
		'hrsh7th/nvim-cmp',
		enabled = true,
		event = 'InsertEnter',
		dependencies = {
			'onsails/lspkind.nvim'
		},
		config = function()
			local cmp = require 'cmp'
			local luasnip = require 'luasnip'
			local lspkind = require('lspkind')
			local cmp_autopairs = require('nvim-autopairs.completion.cmp')

			-- Add VSCode Dark+ Theme Colors to the Menu
			vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { bg = 'NONE', strikethrough = true, fg = '#808080' })
			vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { bg = 'NONE', fg = '#569CD6' })
			vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { link = 'CmpIntemAbbrMatch' })
			vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { bg = 'NONE', fg = '#9CDCFE' })
			vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link = 'CmpItemKindVariable' })
			vim.api.nvim_set_hl(0, 'CmpItemKindText', { link = 'CmpItemKindVariable' })
			vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { bg = 'NONE', fg = '#C586C0' })
			vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link = 'CmpItemKindFunction' })
			vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { bg = 'NONE', fg = '#D4D4D4' })
			vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link = 'CmpItemKindKeyword' })
			vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { link = 'CmpItemKindKeyword' })

			-- If you want insert `(` after select function or method item
			cmp.event:on(
				'confirm_done',
				cmp_autopairs.on_confirm_done()
			)

			cmp.setup {
				performance = { max_view_entries = 40, },
				completion = { completeopt = 'menu,menuone,preview,noselect' },

				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},

				view = {
					entries = {
						name = 'custom', -- can be "custom", "wildmenu" or "native"
						selection_order = 'near_cursor',
					},
				},

				window = {
					-- completion = cmp.config.window.bordered(),
					-- documentation = cmp.config.window.bordered(),
				},

				formatting = {
					format = lspkind.cmp_format({
						mode = "text",
						menu = ({
							buffer = "[Buffer]",
							nvim_lsp = "[LSP]",
							luasnip = "[LuaSnip]",
							nvim_lua = "[Lua]",
							latex_symbols = "[Latex]",
						})
					}),
				},

				event = {
					['confirm_done'] = cmp_autopairs.on_confirm_done(),
				},

				mapping = cmp.mapping.preset.insert {
					["<CR>"] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }),

					['<Tab>'] = function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						else
							fallback()
						end
					end,

					['<S-Tab>'] = function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						else
							fallback()
						end
					end,

					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<A-l>'] = cmp.mapping(function()
						if luasnip.expand_or_locally_jumpable() then
							luasnip.expand_or_jump()
						end
					end, { 'i', 's' }),

					['<A-h>'] = cmp.mapping(function()
						if luasnip.locally_jumpable(-1) then
							luasnip.jump(-1)
						end
					end, { 'i', 's' }),
				},

				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'nvim_lua' },
					{ name = 'luasnip' },
					{ name = 'buffer' },
					{ name = 'cmp_r' },
					{ name = 'path' }, -- system file paths
				}),

				-- Set configuration for specific filetype.
				cmp.setup.filetype('gitcommit', {
					sources = cmp.config.sources({
						{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
					}, {
						{ name = 'buffer' },
					}),
				}),

				-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
				cmp.setup.cmdline('/', {
					mapping = cmp.mapping.preset.cmdline(),
					sources = {
						{ name = 'buffer' },
					},
				}),

				-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
				cmp.setup.cmdline(':', {
					mapping = cmp.mapping.preset.cmdline(),
					sources = cmp.config.sources({
						{ name = 'path' },
					}, {
						{ name = 'cmdline' },
					}),
				}),
			}
		end
	}
}
