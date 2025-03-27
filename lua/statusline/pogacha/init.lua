local statusline = {
	' %M',
	'%=',
	' %t',
	'%=',
	' %p%%',
	' %l:%c '
}
vim.o.statusline = table.concat(statusline, '')
