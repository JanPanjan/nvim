local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	require('pogacha.treesitter'),
	require('pogacha.telescope'),
	require('pogacha.java'),
	require('pogacha.mason'),
	require('pogacha.neotree'),
	require('pogacha.nvimspider'),
	require('pogacha.autopairs'),
	require('pogacha.mini'),
	require('pogacha.luasnip'),
	require('pogacha.cmp'),
	require('pogacha.zenmode'),
	require('pogacha.typewriter'),
	require('pogacha.nvim-r'),
	require('pogacha.colors'),
	require('pogacha.vimtex'),
	-- require('pogacha.markview'),
	{ "folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	require('pogacha.ibl'),
	require('pogacha.typst'),
	require('pogacha.obsidian'),
	require('pogacha.iron')
})
