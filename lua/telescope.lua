local M = {}

M.builtin = require("telescope.builtin")
M.themes = require('telescope.themes')
M.utils = require('telescope.utils')

M.no_preview = function(opts)
	return M.themes.get_dropdown({
		cwd = opts.cwd or M.utils.buffer_dir(),
		find_command = opts.find_command or { 'fd' },
		borderchars = {
			{ '─', '│', '─', '│', '┌', '┐', '┘', '└' },
			prompt = { "─", "│", " ", "│", '┌', '┐', "│", "│" },
			results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
			preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
		},
		width = 0.8,
		previewer = false,
		prompt_title = opts.prompt_title or false,
		enable_preview = opts.enable_preview or nil
	})
end

return M

