return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function ()
        vim.keymap.set('n', 'e', ':Neotree filesystem toggle right<CR>')
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
