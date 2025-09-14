vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set("n", "<leader>tt", ":terminal<CR>")
vim.keymap.set("t", '<leader><Esc>', "<C-\\><C-n>")
vim.keymap.set('n', '<leader>w', ':bd<CR>')
