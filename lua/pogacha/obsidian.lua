return {
	"epwalsh/obsidian.nvim",
	version = "*",  -- Use the latest release
	lazy = true,
	ft = "markdown", -- Only load for markdown files
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"hrsh7th/nvim-cmp",
	},
	opts = {
		workspaces = {
			{ name = "Lotus", path = '/home/pogacha/progAAAAAAA' }
		},

		new_notes_location = 'current_dir',

		attachments = {
			img_folder = 'files'
		},

		note_id_func = function(title)
			local suffix = ""
			if title ~= nil then
				-- If title is given, transform it into valid file name.
				suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
			else
				-- If title is nil, just add 4 random uppercase letters to the suffix.
				for _ = 1, 4 do
					suffix = suffix .. string.char(math.random(65, 90))
				end
			end
			return suffix
		end,

		-- Optional, customize how wiki links are formatted. You can set this to one of:
		--  * "use_alias_only", e.g. '[[Foo Bar]]'
		--  * "prepend_note_id", e.g. '[[foo-bar|Foo Bar]]'
		--  * "prepend_note_path", e.g. '[[foo-bar.md|Foo Bar]]'
		--  * "use_path_only", e.g. '[[foo-bar.md]]'
		wiki_link_func = 'prepend_note_id',

		-- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
		-- URL it will be ignored but you can customize this behavior here.
		---@param url string
		follow_url_func = function(url)
			-- Open the URL in the default web browser.
			vim.fn.jobstart({ "xdg-open", url })
		end,

		-- Optional, by default when you use `:ObsidianFollowLink` on a link to an image
		-- file it will be ignored but you can customize this behavior here.
		---@param img string
		follow_img_func = function(img)
			vim.fn.jobstart({ "xdg-open", img })
		end,
	},
	keys = {
		{ "<leader>n", "<cmd>ObsidianNew<cr>",    desc = "New Obsidian note" },
		{ "<leader>s", "<cmd>ObsidianSearch<cr>", desc = "Search Obsidian notes" },
	},
}
