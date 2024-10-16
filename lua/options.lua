vim.o.conceallevel = 3
vim.opt.cursorline = true

vim.o.wrap = true
vim.o.linebreak = true

vim.opt.number = true
vim.o.numberwidth = 3
vim.opt.relativenumber = true
-- vim.opt.scrolloff = 1000
vim.o.textwidth = 0

vim.opt.mouse = 'a'

vim.opt.showmode = false

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 4

-- indentation for R files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "r",
    callback = function ()
      vim.opt_local.shiftwidth = 2
      vim.opt_local.tabstop = 2
    end
})

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 50

vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = false
vim.opt.listchars = { trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'
