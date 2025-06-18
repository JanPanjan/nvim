local map = function(mode, lhs, rhs, opts) vim.keymap.set(mode, lhs, rhs, opts) end
local t = require('telescope')

---------------------
-- LSP diagnostics --
---------------------
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = "LSP: make a location list" })
map('n', '<leader>d', vim.diagnostic.open_float, { desc = "LSP: open floating diagnostic window" })
map('n', '[d', vim.diagnostic.get_prev, { desc = "LSP: move to previous diagnostic" })
map('n', ']d', vim.diagnostic.get_next, { desc = "LSP: move to next diagnostic" })

vim.keymap.set('n', '<leader>vl', function()
  local new_config = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_config })
  print('toggled diagnostic virtual_lines')
end, { desc = 'LSP: Toggle diagnostic virtual_lines' })

------------------
-- Fuzz finding --
------------------
map('n', '<leader>ff', function() t.builtin.current_buffer_fuzzy_find(t.no_preview({})) end,
  { desc = 'FZF: fuzzy find in current buffer' })

map('n', '<leader><leader>', function() t.builtin.buffers(t.no_preview({})) end,
  { desc = 'FZF: open list of open buffers' })

map('n', '<leader>sf', function() t.builtin.find_files(t.no_preview({ prompt_title = vim.fn.getcwd() })) end,
  { desc = 'FZF: search files in current root directory' })

map('n', '<leader>sc', function() t.builtin.command_history(t.no_preview({})) end,
  { desc = 'FZF: search recent commands' })

map('n', '<leader>sm', function() t.builtin.man_pages() end,
  { desc = 'FZF: search man pages!' })

map('n', '<leader>sk', function() t.builtin.keymaps() end,
  { desc = 'FZF: search keymaps' })

-- TOOD: spremeni svoje themes v `theming.lua` iz user commands, da jih bo zaznal
map('n', '<leader>cs', function() t.builtin.colorscheme({ enable_preview = true }) end,
  { desc = 'FZF: change colorscheme' })

--------------
-- Terminal --
--------------
map('t', '<esc><esc>', '<C-\\><C-N>',
  { desc = "TERM: exit insert mode in terminal mode" })
map({ 'n', 't' }, '|', '<cmd>tabnew<CR><cmd>terminal<CR>',
  { desc = "TERM: open new tab and enter terminal mode", remap = true })

-----------------
-- Writing QOL --
-----------------
map('n', '<leader>z', function()
  vim.api.nvim_set_hl(0, "ZenBg", { link = "Normal" })
  vim.cmd("ZenMode")
end, { desc = 'QOL: enable zen mode' })
map('n', '<leader>tw', '<cmd>TWToggle<CR>', { desc = 'QOL: toggle typewriter mode' })
-- map({ 'n', 'i' }, '<C-p>', '<cmd>Markview toggle<CR>', { desc = 'QOL: toggle markview rendering' })
map('n', '<leader>t', '<cmd>VimtexTocToggle<CR>', { desc = 'QOL: toggle Vimtex table of contents' })
map({ 'n', 't' }, '<leader>vs', 'V:s/', { desc = "QOL: enter substitute mode for current line", remap = true })
map({ 'n', 't' }, '<leader>fs', ':%s/', { desc = "QOL: enter global substitute mode", remap = true })

map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = 'QOL: Move the cursor based on physical lines' })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = 'QOL: Move the cursor based on physical lines' })

map({ 'v', 'n' }, 'ge', '$', { desc = 'QOL: go to last character of line. remap "$"', remap = true })
map('x', '$', 'g_', { desc = 'QOL: Do not include white space characters when using $ in visual mode' })
map('n', 'U', '<C-R>', { desc = 'QOL: redo. remap "CTRL-R"', remap = true })
map('v', '<', '<gv', { desc = 'Stay in visual mode after indenting visual selection' })
map('v', '>', '>gv', { desc = 'Stay in visual mode after indenting visual selection' })
map('n', 'J', 'mzJ`z', { desc = 'QOL: Keep cursor inplace while joining lines' })
map('v', 'J', "<CMD>m '>+1<CR>gv=gv", { desc = 'QOL: Use Shift + J to moves selected lines down in visual mode' })
map('v', 'K', "<CMD>m '<-2<CR>gv=gv", { desc = 'QOL: Use Shift + J to moves selected lines up in visual mode' })
map('n', 'n', 'nzz', { desc = 'QOL: Keep current search result centered on the screen' })
map('n', 'N', 'Nzz', { desc = 'QOL: Keep current search result centered on the screen' })
map('n', '<leader>U', 'vawgUe', { desc = 'QOL: turn current word into upper-case', remap = true })
map('n', '<leader>u', 'vawgue', { remap = true, desc = 'QOL: turn current word into lower-case' })
map('n', 'yp', 'yygccp', { remap = true, desc = 'QOL: yank, comment and past a duplicate line' })
map("n", "<leader>y", "<cmd>%yank<cr>", { desc = 'QOL: Copy entire buffer' })
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'QOL: remove highlight afer search' })
map('i', 'jj', '<esc>la', { desc = "QOL: exit insert mode with 2 j's" })
map('n', ',', ':', { desc = 'QOL: enter command mode with comma' })
map('i', '<C-Space>', '<C-x><C-o>', { desc = 'QOL: Use ctrl+space for omnifunc' })
map('i', '<A-Space>', '<C-x><C-u>', { desc = 'QOL: Use alt+space for completefunc' })

----------------------
-- Navigating files --
----------------------
map('n', '<C-h>', '<C-w><C-h>', { desc = 'NAV: navigate to left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'NAV: navigate to right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'NAV: navigate to bottom window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'NAV: navigate to upper window' })

map('n', '<leader>pl', '<cmd>Explore <CR>', { desc = 'NAV: open netrw explorer' })
map('n', '\\', '<cmd>Neotree left<CR>', { desc = "NAV: toggle neo-tree" })

map('n', '<A-a>', '<cmd>bprev<CR>', { desc = 'NAV: move to previous buffer' })
map('n', '<A-d>', '<cmd>bnext<CR>', { desc = 'NAV: move to next buffer' })
map({ 'n', 't', 'i' }, '<A-x>', '<cmd>bdelete<CR>', { desc = 'NAV: close current buffer', remap = true })
map({ 'n', 't' }, '<C-a>', '<cmd>tabp<CR>', { desc = "NAV: goto previous tab", remap = true })
map({ 'n', 't' }, '<C-d>', '<cmd>tabn<CR>', { desc = "NAV: goto next tab", remap = true })

----------------------
-- Modyfing options --
----------------------
-- Keymaps imajo format `<leader><action><[o]ption>`
--
-- * Action : [e]nable, [d]isable, [t]oggle
-- * Option : prva črka od opt, npr. [w]rap
--------------------------
-- vim.opt.conceallevel --
--------------------------
map('n', '<leader>tc', function()
  if vim.opt.conceallevel._value ~= 0 then
    vim.opt.conceallevel = 0
    print("toggled concealing (level: 0)")
  else
    vim.opt.conceallevel = 3
    print("toggled concealing (level: 3)")
  end
end, { desc = 'OPT: toggle concealing (0 / 3)' })

map('n', '<leader>dc', function()
  vim.opt.conceallevel = 0
  print("disabled concealing (level: 0)")
end, { desc = 'OPT: disable concealing (level: 0)' })

map('n', '<leader>ec', function()
  vim.opt.conceallevel = 3
  print("enabled concealing (level: 3)")
end, { desc = 'OPT: enable concealing (level: 3)' })

------------------
-- vim.opt.wrap --
------------------
map('n', '<leader>tw', function()
  if vim.opt.wrap._value == true then
    vim.opt.wrap = false
    print("toggled (no) word wrapping")
  else
    vim.opt.wrap = true
    print("toggled word wrapping")
  end
end, { desc = 'OPT: toggle word wrapping' })

map('n', '<leader>ew', '<cmd>set wrap<CR><cmd>echo "enabled word wrap"<CR>',
  { desc = 'OPT: enable word wrap' })

map('n', '<leader>dw', '<cmd>set nowrap<CR><cmd>echo "disabled word wrap"<CR>',
  { desc = 'OPT: disable word wrap' })

----------
-- Misc --
----------
map('n', '<leader>ss', '<cmd>source<CR><cmd>echo "sourced" expand("%:t")<CR>',
  { desc = "MISC: source current file" })
