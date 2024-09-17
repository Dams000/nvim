return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, -- lua
				null_ls.builtins.formatting.clang_format, -- c & java
				null_ls.builtins.formatting.google_java_format, -- java
				null_ls.builtins.diagnostics.checkstyle,
				--   .with({
				--   extra_args = { "-c", "/sun_checks.xml" }, -- or "/sun_checks.xml" or path to self written rules
				-- }),                                         -- java
				null_ls.builtins.formatting.prettier,
				-- null_ls.builtins.diagnostics.cpplint, -- c
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
