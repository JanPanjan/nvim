-- mrkn256 colorscheme in Lua (Simplified)
-- Translated from Vimscript by Gemini
-- Original Maintainer: Kenta Murata <mrkn@mrkn.jp>

vim.o.background = 'dark'

-- Clear existing highlighting and reset syntax
vim.cmd('hi clear')
if vim.fn.exists('syntax_on') == 1 then
	vim.cmd('syntax reset')
end

vim.g.colors_name = 'mrkn256'

-- This simplified version uses basic terminal color definitions directly,
-- without the complex approximation logic for 88/256 colors.

-- Basic terminal color definitions (similar to the original Vimscript's else block)
-- Corrected 'cterm' usage to use boolean attributes
vim.api.nvim_set_hl(0, "Normal", { ctermfg = 'grey', ctermbg = 'black' }) -- Added Normal as it was set in the original if block

vim.api.nvim_set_hl(0, "SpecialKey", { ctermfg = 'darkgreen' })
vim.api.nvim_set_hl(0, "NonText", { bold = true, ctermfg = 'darkblue' })
vim.api.nvim_set_hl(0, "Directory", { ctermfg = 'darkcyan' })
vim.api.nvim_set_hl(0, "ErrorMsg", { bold = true, ctermfg = 7, ctermbg = 1 })
vim.api.nvim_set_hl(0, "IncSearch", { ctermfg = 'yellow', ctermbg = 'green' })
vim.api.nvim_set_hl(0, "Search", { ctermfg = 'grey', ctermbg = 'blue' })
vim.api.nvim_set_hl(0, "MoreMsg", { ctermfg = 'darkgreen' })
vim.api.nvim_set_hl(0, "ModeMsg", { ctermfg = 'brown' })
vim.api.nvim_set_hl(0, "LineNr", { ctermfg = 3 })
vim.api.nvim_set_hl(0, "Question", { ctermfg = 'green' })
vim.api.nvim_set_hl(0, "StatusLine", { bold = true, reverse = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { reverse = true })
vim.api.nvim_set_hl(0, "VertSplit", { reverse = true })
vim.api.nvim_set_hl(0, "Title", { ctermfg = 5 })
vim.api.nvim_set_hl(0, "Visual", { reverse = true })
vim.api.nvim_set_hl(0, "VisualNOS", { bold = true, underline = true })
vim.api.nvim_set_hl(0, "WarningMsg", { ctermfg = 1 })
vim.api.nvim_set_hl(0, "WildMenu", { ctermfg = 0, ctermbg = 3 })
vim.api.nvim_set_hl(0, "Folded", { ctermfg = 'darkgrey', ctermbg = 'NONE' })
vim.api.nvim_set_hl(0, "FoldColumn", { ctermfg = 'darkgrey', ctermbg = 'NONE' })
vim.api.nvim_set_hl(0, "DiffAdd", { ctermbg = 4 })
vim.api.nvim_set_hl(0, "DiffChange", { ctermbg = 5 })
vim.api.nvim_set_hl(0, "DiffDelete", { bold = true, ctermfg = 4, ctermbg = 6 })
vim.api.nvim_set_hl(0, "DiffText", { bold = true, ctermbg = 1 })
vim.api.nvim_set_hl(0, "Comment", { ctermfg = 'darkcyan' })
vim.api.nvim_set_hl(0, "Constant", { ctermfg = 'brown' })
vim.api.nvim_set_hl(0, "Special", { ctermfg = 5 })
vim.api.nvim_set_hl(0, "Identifier", { ctermfg = 6 })
vim.api.nvim_set_hl(0, "Statement", { ctermfg = 3 })
vim.api.nvim_set_hl(0, "PreProc", { ctermfg = 5 })
vim.api.nvim_set_hl(0, "Type", { ctermfg = 2 })
vim.api.nvim_set_hl(0, "Underlined", { underline = true, ctermfg = 5 })
vim.api.nvim_set_hl(0, "Ignore", { ctermfg = 'darkgrey' })
vim.api.nvim_set_hl(0, "Error", { bold = true, ctermfg = 7, ctermbg = 1 })
