-- lazy.nvim 読み込み
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
   { "folke/tokyonight.nvim" },
   { "windwp/nvim-autopairs", event = { "BufNewFile", "BufReadPre" }, config = function() require("nvim-autopairs").setup({}) end },
   { "nvim-lualine/lualine.nvim" },
   { "karb94/neoscroll.nvim" },
   { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
   { "akinsho/toggleterm.nvim", version = "*", config = true },
   { "nvim-tree/nvim-tree.lua" },
   { "levouh/tint.nvim" },
   { "romgrk/barbar.nvim", },
   { "nvim-tree/nvim-web-devicons" },
})

-- 各プラグイン設定を読み込み
require("plugins.colorscheme")
require("plugins.lualine")
require("plugins.neoscroll")
require("plugins.ibl")
require("plugins.toggleterm")
require("plugins.nvimtree")
require("plugins.tint")
require("plugins.barbar")
