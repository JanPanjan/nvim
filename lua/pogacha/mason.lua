return {
  "williamboman/mason.nvim",
  dependencies = {
    'saghen/blink.cmp',
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      auto_install = true,
      ensure_installed = {
        "basedpyright", "lua_ls", "clangd", "marksman", "rust_analyzer", "bashls", "tinymist"
      }
    })
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    local lspconfig = require('lspconfig')
    lspconfig['lua_ls'].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          semantic = {
            enable = false,
          },
          format = {
            enable = true,
          },
          runtime = {
            version = 'LuaJIT',
          },
          diagnostic = {
            globals = { "vim" },
          },
          workspace = {
            checkThirdParty = false,
            library = vim.api.nvim_get_runtime_file("", true),
          },
        },
      },
    })
    lspconfig['basedpyright'].setup({ capabilities = capabilities })
    lspconfig['marksman'].setup({ capabilities = capabilities })
    lspconfig['clangd'].setup({ capabilities = capabilities })
    lspconfig['rust_analyzer'].setup({ capabilities = capabilities })
    lspconfig['jdtls'].setup({ capabilities = capabilities })
  end
}
