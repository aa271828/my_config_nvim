-- lazy.nvim 読み込み ------------------------------------------
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")
-- 自作設定を読み込む
require("plugins")

-- 基本設定
require("core.keymaps")
require("core.colors")
require("core.options")
