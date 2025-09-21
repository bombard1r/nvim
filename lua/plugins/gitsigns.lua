return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  cond = function()
    return vim.fn.isdirectory(".git") == 1
  end,
  config = function()
    require("gitsigns").setup()
  end,
}
