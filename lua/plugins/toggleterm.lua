return {
    "akinsho/toggleterm.nvim",
    version = "*",
    cmd = "ToggleTerm",
    keys = {
        { "<C-\\>", desc = "Toggle terminal" },
    },
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<C-\>]],
            shade_terminals = true,
            direction = "float",
            float_opts = {
                border = "curved",
                winblend = 0,
            },
            close_on_exit = true,
        })
    end,
}
