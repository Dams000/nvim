return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, -- lua
				null_ls.builtins.formatting.clang_format.with({
					filetypes = { "c", "java" },
				}), -- c & java
				null_ls.builtins.formatting.google_java_format, -- java
				null_ls.builtins.formatting.prettier,

				null_ls.builtins.diagnostics.checkstyle, -- java
				-- null_ls.builtins.diagnostics.cpplint, -- c

				-- null_ls.builtins.formatting.ast_grep, -- c
				-- null_ls.builtins.diagnostics.ast_grep, -- c
			},
			-- Add the format on save functionality
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
