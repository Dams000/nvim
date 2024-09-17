return {
	-- "tokyonight.nvim",
	-- opts = {
	-- 	transparent = true,
	-- 	styles = {
	-- 		sidebars = "transparent",
	-- 		floats = "transparent",
	-- 	},
	-- },
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		local catppuccin = require("catppuccin")
		catppuccin.setup({
			flavour = "mocha",
			transparent_background = true,
			styles = {
				conditionals = {},
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
