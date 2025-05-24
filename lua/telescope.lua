local M = {}

M.builtin = require("telescope.builtin")
M.themes = require('telescope.themes')
M.utils = require('telescope.utils')

M.no_preview = function(opts)
	opts = opts or {} -- Ensure opts is a table even if not provided
	return M.themes.get_dropdown({
		previewer = false,
		prompt_title = opts.prompt_title, -- Pass prompt_title through
	})
end

return M
