-- Basic Neovim config for C++ / Competitive Programming

-- Indent size 3
vim.o.shiftwidth = 3
vim.o.tabstop = 3
vim.o.expandtab = true

-- Clipboard integration
vim.o.clipboard = 'unnamedplus'

-- Avoid yanking on delete with x
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('v', 'x', '"_x')

-- 現在のカーソル行をハイライト
vim.wo.number = true
-- 現在行は絶対番号
vim.wo.relativenumber = true
-- その他の行は相対番号
vim.wo.cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#111111" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffcc00", bold = true })
-- Highlight comment
vim.api.nvim_set_hl(0, "Comment", { fg = "#88B788", italic = true })

-- Plugin management: lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      lazypath
   })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
   { "folke/tokyonight.nvim", lazy = false },

   -- file browser (telescope base + extension)
   {
      "nvim-telescope/telescope.nvim",
      dependencies = {
         "nvim-lua/plenary.nvim",
         "nvim-telescope/telescope-file-browser.nvim",
      },
   },

   { "romgrk/barbar.nvim", dependencies = { "nvim-web-devicons" } },
   { "akinsho/toggleterm.nvim", version = "*" },
   { "windwp/nvim-autopairs" },
   { "karb94/neoscroll.nvim" },
   { "lukas-reineke/indent-blankline.nvim" },
   { "nvim-lualine/lualine.nvim", dependencies = { "nvim-web-devicons" } },
})

-- Colorscheme
vim.cmd("colorscheme tokyonight-moon")

-- Line number / cursor
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true

-- toggleterm
require('toggleterm').setup({
   direction = "float",
   float_opts = {
      border = "rounded",
   },
})

local toggle = function()
   vim.cmd('update')
   require('toggleterm').toggle()
end
vim.keymap.set('n', '<C-t>', toggle)
vim.keymap.set('t', '<C-t>', toggle)

-- autopairs
require('nvim-autopairs').setup({})

-- neoscroll
require('neoscroll').setup({})

-- indent-blankline (ibl v3)
require('ibl').setup({
   indent = { char = '│' },
   whitespace = { remove_blankline_trail = true },
})

-- lualine
require('lualine').setup({
   options = {
      theme = 'tokyonight',
      section_separators = '',
      component_separators = '',
   },
})

-- telescope + file-browser
local telescope = require('telescope')
telescope.setup({})

telescope.load_extension('file_browser')

-- File browser keymap
-- <Space>fb でカレントディレクトリを開く
vim.keymap.set('n', '<Space>fb', function()
   require('telescope').extensions.file_browser.file_browser({
      path = "%:p:h",
      select_buffer = true,
   })
end)

-- Disable automatic comment continuation (// on Enter)
vim.api.nvim_create_autocmd("FileType", {
   pattern = { "c", "cpp" },
   callback = function()
      vim.opt_local.formatoptions:remove({ "r", "o" })
   end,
})

-- デフォルトは見にくい
vim.api.nvim_set_hl(0, "Comment", { fg = "#88B788", italic = true })
