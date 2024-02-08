return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local keymap = vim.keymap -- for conciseness

		local opts = { noremap = true, silent = true }
		local on_attach = function(client, bufnr)
			opts.buffer = bufnr

			if client.server_capabilities.colorProvider then
				-- Attach document colour support
				require("document-color").buf_attach(bufnr)
			end

			-- set keybinds
			opts.desc = "Show LSP references"
			keymap.set("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

			opts.desc = "Go to declaration"
			keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts) -- go to declaration

			opts.desc = "Show LSP definitions"
			keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

			opts.desc = "Show LSP implementations"
			keymap.set("n", "<leader>gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

			opts.desc = "Show LSP type definitions"
			keymap.set("n", "<leader>gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

			opts.desc = "See available code actions"
			keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

			opts.desc = "Smart rename"
			keymap.set("n", "<leader>rw", vim.lsp.buf.rename, opts) -- smart rename

			opts.desc = "Show documentation for what is under cursor"
			keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

			opts.desc = "LSP Info"
			keymap.set("n", "<leader>li", ":LspInfo<CR>", opts) -- mapping to restart lsp if necessary

			opts.desc = "LSP Restart"
			keymap.set("n", "<leader>lr", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary

			opts.desc = "LSP Stop"
			keymap.set("n", "<leader>ls", ":LspStop<CR>", opts) -- mapping to restart lsp if necessary

			opts.desc = "Mason"
			keymap.set("n", "<leader>lm", ":Mason<CR>", opts) -- mapping to restart lsp if necessary

			opts.desc = "Lazy"
			keymap.set("n", "<leader>ll", ":Lazy<CR>", opts) -- mapping to restart lsp if necessary
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()

		capabilities.textDocument.colorProvider = {
			dynamicRegistration = true,
		}
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig.yamlls.setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig.biome.setup({
			capabilities = capabilities, -- Added missing comma here
			on_attach = on_attach,
		})
		lspconfig.tsserver.setup({
			capabilities = capabilities, -- Added missing comma here
			on_attach = on_attach,
		})
		lspconfig.gopls.setup({
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
			filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
		})
	end,
}
