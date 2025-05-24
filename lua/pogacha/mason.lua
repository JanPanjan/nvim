return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			auto_install = true,
			ensure_installed = {
				"basedpyright", "lua_ls", "clangd", "marksman", "rust_analyzer", "jdtls"
			}
		})
		require("lspconfig").lua_ls.setup({})
		require("lspconfig").basedpyright.setup({})
		require("lspconfig").marksman.setup({})
		require("lspconfig").clangd.setup({})
		require("lspconfig").rust_analyzer.setup({})
		-- require("lspconfig").ocamllsp.setup({})
		require('lspconfig').jdtls.setup({})
	end
}
