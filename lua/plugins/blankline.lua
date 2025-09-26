return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        indent = {
            char = " ", -- Empty/invisible character for regular indents
        },
        scope = {
            enabled = true,
            char = "│", -- Character for current scope
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
}
