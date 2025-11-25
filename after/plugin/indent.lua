-- indent
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",  -- 全言語対象
  callback = function()
    vim.opt_local.shiftwidth = 3
    vim.opt_local.tabstop = 3
    vim.opt_local.softtabstop = 3
  end,
})
