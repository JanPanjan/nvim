vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup('TextYanking', { clear = true }),
	callback = function()
		(vim.hl or vim.highlight).on_yank()
	end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
	group = vim.api.nvim_create_augroup('FormatBuffer', { clear = true }),
	buffer = bufnr,
	callback = function()
		local current_view = vim.fn.winsaveview()
		vim.cmd([[keeppatterns %s/\s\+$//e]])
		vim.fn.winrestview(current_view)
		vim.lsp.buf.format()
	end
})

vim.api.nvim_create_autocmd('BufWritePost', {
	group = vim.api.nvim_create_augroup('CompileTex', { clear = true }),
	pattern = "*.tex",
	command = "silent VimtexCompileSS",
})
