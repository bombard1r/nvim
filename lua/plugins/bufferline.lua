return {
    'akinsho/bufferline.nvim',
    lazy = false,
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require('bufferline').setup {
            options = {
                mode = "buffers",
                numbers = "none",
                close_command = "bdelete",
            }
        }

        vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
        vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
    end,
}
