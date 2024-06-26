-- NOTE: LSP Configuration
return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.tsserver.setup({
			capabilities = capabilities,
		})
		lspconfig.clangd.setup({
			capabilities = capabilities,
		})
		lspconfig.vimls.setup({
			capabilities = capabilities,
		})

		-- Keymaps for LSP functions
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}
