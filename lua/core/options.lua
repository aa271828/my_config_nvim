vim.o.number = true
vim.o.relativenumber = false 
vim.o.expandtab = true
vim.o.smartindent = true  -- 基本のスマートインデント
-- vim.o.cindent = true      -- C系言語向けの自動インデント
vim.opt.cinoptions = { "(0", "u0", "W4" }

-- 不可視化文字可視化 ----------------------------------------
vim.opt.list = true
vim.opt.listchars = {
   space = "·",
   tab = "→ ",
   trail = "·",
   extends = ">",
   precedes = "<",
}

vim.opt.clipboard:append({ "unnamedplus" })
vim.opt.termguicolors = true
vim.o.background = "dark"

-- 改行後の自動コメントアウトを無効
vim.cmd("autocmd FileType * setlocal formatoptions-=r formatoptions-=o")
