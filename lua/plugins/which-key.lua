return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		require("which-key").register({
			["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
			["<leader>b"] = { name = "[B]uffer", _ = "which_key_ignore" },
			["<leader>f"] = { name = "[F]ind", _ = "which_key_ignore" },
			["<leader>g"] = { name = "[G]o To", _ = "which_key_ignore" },
			["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
			["<leader>d"] = { name = "[D]iagnostic", _ = "which_key_ignore" },
			["<leader>s"] = { name = "[S]essions", _ = "which_key_ignore" },
			["<leader>i"] = { name = "[I]interface", _ = "which_key_ignore" },
			["<leader>q"] = { name = "[Q]uickFix", _ = "which_key_ignore" },
			["<leader>a"] = { name = "[A]round", _ = "which_key_ignore" },
			["<leader>rs"] = { name = "[S]pecter", _ = "which_key_ignore" },
		})
	end,
}
