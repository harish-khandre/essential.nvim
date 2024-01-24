return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"emmet_ls",
					"lua_ls",
					--					"tsserver",
					"tailwindcss",
					"prismals",
					"html",
					"cssls",
					"sqlls",
					"biome",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local lspconfig = require("lspconfig")
			local cmp_nvim_lsp = require("cmp_nvim_lsp")

			local opts = { noremap = true, silent = true }
			local on_attach = function(client, bufnr)
				opts.buffer = bufnr
				vim.keymap.set("n", "gD", function()
					vim.lsp.buf.declaration()
				end, opts, { desc = "Go to declaration" })
				vim.keymap.set("n", "gd", function()
					vim.lsp.buf.definition()
				end, opts, { desc = "Go to definition" })
				vim.keymap.set("n", "K", function()
					vim.lsp.buf.hover()
				end, opts, { desc = "Details" })
				vim.keymap.set("n", "gi", function()
					vim.lsp.buf.implementation()
				end, opts, { desc = "Go to implementations" })
				vim.keymap.set({ "n", "v" }, "<leader>ca", function()
					vim.lsp.buf.code_action()
				end, opts, { desc = "Code Action" })
				vim.keymap.set("n", "<leader>rl", function()
					vim.lsp.buf.rename()
				end, opts, { desc = "Rename with lsp" })
				vim.keymap.set("n", "<leader>gs", function()
					vim.lsp.buf.signature_help()
				end, opts, { desc = "Signature_help" })
			end

			local capabilities = cmp_nvim_lsp.default_capabilities()
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})
			--[[			lspconfig.tsserver.setup({
				capabilities = capabilities, -- Added missing comma here
				on_attach = on_attach,
			})
  ]]
			lspconfig.biome.setup({
				capabilities = capabilities, -- Added missing comma here
				on_attach = on_attach,
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities, -- Added missing comma here
				on_attach = on_attach,
			})
			lspconfig.prismals.setup({
				capabilities = capabilities, -- Added missing comma here
				on_attach = on_attach,
			})
			lspconfig.html.setup({
				capabilities = capabilities, -- Added missing comma here
				on_attach = on_attach,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities, -- Added missing comma here
				on_attach = on_attach,
			})
			lspconfig.sqlls.setup({
				capabilities = capabilities, -- Added missing comma here
				on_attach = on_attach,
			})
			lspconfig["emmet_ls"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
				filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
			})
		end,
	},
}
