return {
	"github/copilot.vim",
	config = function()
		vim.g.copilot_no_tab_map = false -- Disable default Tab keymap to prevent conflicts

		-- Key mappings for Copilot
		local keymap = vim.keymap -- for conciseness
		keymap.set("i", "<C-g>", "<Plug>(copilot-accept-word)", { silent = true })
		keymap.set("i", "<C-l>", "<Plug>(copilot-next)", { silent = true })
		keymap.set("i", "<C-h>", "<Plug>(copilot-previous)", { silent = true })
		keymap.set("i", "<C-k>", "<Plug>(copilot-suggest)", { silent = true })
		keymap.set("i", "<C-j>", "<Plug>(copilot-dismiss)", { silent = true })

		-- Optional: Disable Copilot in specific file types
		vim.g.copilot_filetypes = {
			["*"] = true,
			markdown = false,
			-- text = false,
		}
	end,
}
