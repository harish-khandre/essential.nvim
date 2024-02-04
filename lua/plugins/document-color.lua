return {
	"mrshmllow/document-color.nvim",
	config = function()
		require("document-color").setup({
			-- Default options
			mode = "background", -- "background" | "foreground" | "single"
		})
	end,
}
