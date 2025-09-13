return {
    "github/copilot.vim",
    lazy = false,
    config = function()
        vim.g.copilot_no_tab_map = true

        vim.keymap.set("i", "<C-j>", 'copilot#Accept("<CR>")', {
            expr = true,
            silent = true,
            script = true, -- Only needed for some legacy plugins
            desc = "Accept Copilot suggestion"
        })
    end,
}
