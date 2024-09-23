return {
	"catppuccin/nvim",
	'shaunsingh/nord.nvim',
	'joshdick/onedark.vim',
	"jacoborus/tender.vim",
	"neanias/everforest-nvim",
	background = "hard",
	version = false,
	lazy = false,
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.everforest_enable_italic = true
	end,
}
