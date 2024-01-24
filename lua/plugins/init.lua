return {
	{
		"j-hui/fidget.nvim",
		config = true,
	},
	{
		"folke/neodev.nvim",
		config = function()
			require("neodev").setup()
		end,
	},
	{
		"echasnovski/mini.indentscope",
		version = "*",
		config = function()
			require("mini.indentscope").setup({
				symbol = "▏",
			})
		end,
	},
	{
		"RRethy/vim-illuminate",
	},
}
