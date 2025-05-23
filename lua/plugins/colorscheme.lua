return {
	-- "tokyonight.nvim",
	-- opts = {
	-- 	transparent = true,
	-- 	styles = {
	-- 		sidebars = "transparent",
	-- 		floats = "transparent",
	-- 	},
	-- },
	-- "catppuccin/nvim",
	-- lazy = false,
	-- name = "catppuccin",
	-- priority = 1000,
	-- config = function()
	-- 	local catppuccin = require("catppuccin")
	-- 	catppuccin.setup({
	-- 		flavour = "mocha",
	-- 		transparent_background = true,
	-- 		styles = {
	-- 			conditionals = {},
	-- 		},
	-- 	})
	-- 	vim.cmd.colorscheme("catppuccin")
	-- end,
	"rebelot/kanagawa.nvim",
	config = function()
		local kanagawa = require("kanagawa")
		-- Default options:
		kanagawa.setup({
			compile = false, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = true, --false, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			colors = { -- add/modify theme and palette colors
				palette = {},
				theme = {
					wave = {
						ui = { bg = "#12120f", bg_gutter = "#1D1C19" },
					},
					lotus = {},
					dragon = {},
					all = {},
				},
			},
			overrides = function(colors) -- add/modify highlights
				local theme = colors.theme
				return {
					Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
					PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
					PmenuSbar = { bg = theme.ui.bg_m1 },
					PmenuThumb = { bg = theme.ui.bg_p2 },
				}
			end,
			theme = "wave", -- Load "wave" theme when 'background' option is not set
			background = { -- map the value of 'background' option to a theme
				dark = "wave", -- try "dragon" !
				light = "lotus",
			},
		})

		vim.cmd("colorscheme kanagawa")
	end,
}
