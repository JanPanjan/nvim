return {
	"sylvanfranklin/omni-preview.nvim",
	dependencies = { 'chomosuke/typst-preview.nvim' },
	keys = {
		{ "<leader>po", "<cmd>OmniPreview start<CR>" },
		{ "<leader>pc", "<cmd>OmniPreview stop<CR>" }
	},
	opts = {}
}
