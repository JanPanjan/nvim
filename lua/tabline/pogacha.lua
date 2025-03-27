function MyTablineFunction()
	local bufname = vim.fn.expand("%:t")
	print(bufname)
	return "[" .. bufname .. "]"
end

-- vim.opt.tabline = "%!v:lua.MyTablineFunction()"
