-- Setup the statusline with custom content (components, strings).
local Line = require('statusline/rusty/line')
local Components = require('statusline/rusty/components')

local contents = {
	Components.mode,
	Components.position,
	Components.lsp,
	Components.diagnostics,
	"%=", -- Align to the right
	Components.modified,
	Components.path,
	Components.permissions,
}

Line:setup(contents)
