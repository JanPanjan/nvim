local map = function(mode, lhs, rhs, opts) vim.keymap.set(mode, lhs, rhs, opts) end
local t = require('telescope')

map('n', '<leader>t', '<cmd>VimtexTocToggle<CR>', { desc = 'PSN: toggle Vimtex table of contents' })

map('n', '<leader>q', vim.diagnostic.setloclist, { desc = "PSN: make a location list" })
map('n', '<leader>d', vim.diagnostic.open_float, { desc = "PSN: open floating diagnostic window" })
map('n', '[d', vim.diagnostic.get_prev, { desc = "PSN: move to previous diagnostic" })
map('n', ']d', vim.diagnostic.get_next, { desc = "PSN: move to next diagnostic" })

map('n', '<leader>ff', function() t.builtin.current_buffer_fuzzy_find(t.no_preview({})) end,
  { desc = 'PSN: fuzzy find in current buffer' })

map('n', '<leader><leader>', function() t.builtin.buffers(t.no_preview({})) end,
  { desc = 'PSN: open list of open buffers' })

map('n', '<leader>sf', function() t.builtin.find_files(t.no_preview({ prompt_title = vim.fn.getcwd() })) end,
  { desc = 'PSN: search files in current root directory' })

map('n', '<leader>sc', function() t.builtin.command_history(t.no_preview({})) end,
  { desc = 'PSN: search recent commands' })

map('n', '<leader>sm', function() t.builtin.man_pages() end,
  { desc = 'PSN: search man pages!' })

-- TOOD: spremeni svoje themes v `theming.lua` iz user commands, da jih bo zaznal
map('n', '<leader>cs', function() t.builtin.colorscheme({ enable_preview = true }) end,
  { desc = 'PSN: change colorscheme' })

map({ 'n', 't' }, '<leader>vs', 'V:s/', { desc = "PSN: enter substitute mode for current line", remap = true })
map({ 'n', 't' }, '<leader>fs', ':%s/', { desc = "PSN: enter global substitute mode", remap = true })

map('t', '<esc><esc>', '<C-\\><C-N>',
  { desc = "PSN: exit insert mode in terminal mode" })
map({ 'n', 't' }, '|', '<cmd>tabnew<CR><cmd>terminal<CR>',
  { desc = "PSN: open new tab and enter terminal mode", remap = true })

map({ 'v', 'n' }, 'ge', '$', { desc = 'PSN: go to last character of line. remap "$"', remap = true })
map('x', '$', 'g_', { desc = 'PSN: Do not include white space characters when using $ in visual mode' })
map('n', 'U', '<C-R>', { desc = 'PSN: redo. remap "CTRL-R"', remap = true })
map('v', '<', '<gv', { desc = 'Stay in visual mode after indenting visual selection' })
map('v', '>', '>gv', { desc = 'Stay in visual mode after indenting visual selection' })
map('n', 'J', 'mzJ`z', { desc = 'PSN: Keep cursor inplace while joining lines' })
map('v', 'J', "<CMD>m '>+1<CR>gv=gv", { desc = 'PSN: Use Shift + J to moves selected lines down in visual mode' })
map('v', 'K', "<CMD>m '<-2<CR>gv=gv", { desc = 'PSN: Use Shift + J to moves selected lines up in visual mode' })
map('n', 'n', 'nzz', { desc = 'PSN: Keep current search result centered on the screen' })
map('n', 'N', 'Nzz', { desc = 'PSN: Keep current search result centered on the screen' })
map('n', '<leader>U', 'vawgUe', { desc = 'PSN: turn current word into upper-case', remap = true })
map('n', '<leader>u', 'vawgue', { remap = true, desc = 'PSN: turn current word into lower-case' })
map('n', 'yp', 'yygccp', { remap = true, desc = 'PSN: yank, comment and past a duplicate line' })
map("n", "<leader>y", "<cmd>%yank<cr>", { desc = 'PSN: Copy entire buffer' })
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'PSN: remove highlight afer search' })
map('i', 'jj', '<esc>la', { desc = "PSN: exit insert mode with 2 j's" })
map('n', ',', ':', { desc = 'PSN: enter command mode with comma' })
map('i', '<C-Space>', '<C-x><C-o>', { desc = 'PSN: Use ctrl+space for omnifunc' })
map('i', '<A-Space>', '<C-x><C-u>', { desc = 'PSN: Use alt+space for completefunc' })

map('n', '<leader>z', function()
  vim.api.nvim_set_hl(0, "ZenBg", { link = "Normal" })
  vim.cmd("ZenMode")
end, { desc = 'PSN: enable zen mode' })

map('n', '<leader>tw', '<cmd>TWToggle<CR>', { desc = 'PSN: toggle typewriter mode' })
map({ 'n', 'i' }, '<C-p>', '<cmd>Markview toggle<CR>', { desc = 'PSN: toggle markview rendering' })

map('n', '<leader>sw', '<cmd>set wrap<CR>', { desc = 'PSN: enable word wrap' })
map('n', '<leader>nw', '<cmd>set nowrap<CR>', { desc = 'PSN: disable word wrap' })
map('n', '<leader>ss', '<cmd>source<CR><cmd>echo "sourced" expand("%:t")<CR>',
  { desc = "PSN: source current file" })

map('n', '<A-a>', '<cmd>bprev<CR>', { desc = 'PSN: move to previous buffer' })
map('n', '<A-d>', '<cmd>bnext<CR>', { desc = 'PSN: move to next buffer' })
map({ 'n', 't', 'i' }, '<A-x>', '<cmd>bdelete<CR>', { desc = 'PSN: close current buffer', remap = true })
map({ 'n', 't' }, '<C-a>', '<cmd>tabp<CR>', { desc = "PSN: goto previous tab", remap = true })
map({ 'n', 't' }, '<C-d>', '<cmd>tabn<CR>', { desc = "PSN: goto next tab", remap = true })

map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = 'PSN: Move the cursor based on physical lines' })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = 'PSN: Move the cursor based on physical lines' })

map('n', '<C-h>', '<C-w><C-h>', { desc = 'PSN: navigate to left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'PSN: navigate to right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'PSN: navigate to bottom window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'PSN: navigate to upper window' })

map('n', '<leader>pl', '<cmd>Explore <CR>', { desc = 'PSN: open netrw explorer' })
map('n', '\\', '<cmd>Neotree left<CR>', { desc = "PSN: toggle neo-tree" })
