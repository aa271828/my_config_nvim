require("barbar").setup({
   icons = {
      button = "x",
      filetype = { enabled = false },
   },
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>")
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>")

