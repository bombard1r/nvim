return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<leader>t]],
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
