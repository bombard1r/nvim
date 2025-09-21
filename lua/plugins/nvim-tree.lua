return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    cmd = "Neotree",
    keys = {
        { "e", ":Neotree filesystem toggle right<CR>", desc = "Toggle Neo-tree" },
    },
    config = function ()
        require("neo-tree").setup({
            close_if_last_window = true,
            window = {
                mappings = {
                    ["e"] = "close_window", -- or "toggle" doesn’t exist, so close works here
                },
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
        })
    end
}
