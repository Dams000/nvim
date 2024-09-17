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
        "--offset-encoding=utf-16",
      },
    })
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, {})
  end,
}
