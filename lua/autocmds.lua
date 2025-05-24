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

-- vim.api.nvim_create_autocmd('BufEnter', {
-- 	callback = function()
-- 		if vim.filetype.match({ buf = 0 }) == "python" then
-- 			local print_string = function()
-- 				vim.cmd('normal! da\"h')
-- 				vim.cmd('normal! aprint(')
-- 				vim.cmd('normal! p')
-- 				vim.cmd('normal! a)')
-- 				vim.cmd('normal! F)')
-- 			end
--
-- 			local print_digit = function()
-- 				vim.cmd('normal! B')
-- 				vim.cmd('normal! dE')
-- 				vim.cmd('normal! aprint(, ')
-- 				vim.cmd('normal! p')
-- 				vim.cmd('normal! a)')
-- 				vim.cmd('normal! F)')
-- 			end
--
-- 			vim.keymap.set("n",
-- 				"<leader>ps",
-- 				print_string,
-- 				{ desc = "C: surround string in `printf` function" })
--
-- 			vim.keymap.set("n",
-- 				"<leader>pd",
-- 				print_digit,
-- 				{ desc = "C: surround number (or variable) in `printf` function with '%d'" })
-- 		elseif vim.filetype.match({ buf = 0 }) == "c" then
-- 			local print_string = function()
-- 				vim.cmd('normal! da\"h')
-- 				vim.cmd('normal! aprintf("%s\\n", ')
-- 				vim.cmd('normal! p')
-- 				vim.cmd('normal! a);')
-- 				vim.cmd('normal! F(l')
-- 			end
--
-- 			local print_digit = function()
-- 				vim.cmd('normal! B')
-- 				vim.cmd('normal! dE')
-- 				vim.cmd('normal! aprintf("%d\\n", ')
-- 				vim.cmd('normal! p')
-- 				vim.cmd('normal! a);')
-- 				vim.cmd('normal! F(l')
-- 			end
--
-- 			vim.keymap.set("n",
-- 				"<leader>ps",
-- 				print_string,
-- 				{ desc = "C: surround string in `printf` function" })
--
-- 			vim.keymap.set("n",
-- 				"<leader>pd",
-- 				print_digit,
-- 				{ desc = "C: surround number (or variable) in `printf` function with '%d'" })
-- 		end
-- 	end
-- })
