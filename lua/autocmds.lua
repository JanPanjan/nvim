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

		if vim.filetype.match({ buf = 0 }) == "c" then
			vim.cmd('normal! ggVG')
			vim.cmd('normal! =')
		else
			vim.lsp.buf.format()
		end
	end
})

vim.api.nvim_create_autocmd('BufWritePost', {
	group = vim.api.nvim_create_augroup('CompileTex', { clear = true }),
	pattern = "*.tex",
	command = "silent VimtexCompileSS",
})

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end
})
