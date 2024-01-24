return {
    "nvim-treesitter/nvim-treesitter",
    build  = ":TSUpdate",
    event  = { "BufReadPre", "BufNewFile" },
    config = function()
        local config = require('nvim-treesitter.configs')
        config.setup({
            ensure_installed = { "javascript", "typescript", "html", "css", "json", "lua", "tsx", "prisma", "graphql" }, -- Ensure these parsers are installed
            highlight = {
                enable = true,
            },
            indent = {
                enable = true, -- Enable indentation based on Treesitter
            },
            autotag = {
                enable = true, -- Automatically close HTML tags
            },
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true, -- Include symbols beyond cursor
                    keymaps = {
                        -- Use `af` and `if` to select blocks with function calls
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                        -- Add more keymaps for other text objects as needed
                    },
                },
            },
        })
    end
}
