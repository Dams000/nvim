return {
	"neovim/nvim-lspconfig",
	-- event = { "BufReadPre", "BufNewFile" },

	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({ capabilities = capabilities })
		lspconfig.clangd.setup({
			capabilities = capabilities,
			cmd = {
				"clangd",
				-- "ast-grep",
				"--offset-encoding=utf-16",
			},
		})
		local keymap = vim.keymap
		keymap.set("n", "K", vim.lsp.buf.hover, {})
		keymap.set("n", "gD", vim.lsp.buf.definition, {})
		keymap.set("n", "<space>ca", vim.lsp.buf.code_action, {})
	end,
}
