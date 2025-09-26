return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        indent = {
            char = "▏", -- Empty/invisible character for regular indents
            highlight = "IndentGray", -- Highlight group for regular indents
        },
        scope = {
            enabled = true,
            char = "│", -- Character for current scope
            highlight = "IblScope", -- Highlight group for current scope
            show_start = true, -- Show start of scope
            show_end = false, -- You can set this to true if you want
            include = {
                node_type = {
                    ["*"] = {
                        "*", -- Apply to all node types
                    },
                },
            },
        },
    },

    config = function(_, opts)
        local hooks = require "ibl.hooks"
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "IndentGray", { fg = "#3c3836" }) -- Gray for regular lines
            vim.api.nvim_set_hl(0, "IblScope", { fg = "#458588" }) -- Blue for current scope
        end)

        require("ibl").setup(opts)
    end,
}
