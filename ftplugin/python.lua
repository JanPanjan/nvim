vim.opt.tabstop = 4
-- vim.keymap.set('n', '<F5>', '<cmd>:w<CR><cmd>!python %<CR>')
vim.keymap.set('n', '<F5>', '<cmd>:w<CR><cmd>!uv run src/main.py<CR>')
