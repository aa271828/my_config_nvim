require("nvim-tree").setup({
   view = { width = 30, side = "left" },
   filters = { dotfiles = false },
   hijack_cursor = true,
   update_focused_file = {
      enable = true,       -- 現在のバッファに自動追従
      update_cwd = true,   -- カレントディレクトリも自動で更新
      ignore_list = {},    -- 無視したいファイルがあればここに
   },
   renderer = {
      icons = {
         show = {
            file = false,
            folder = false,
            folder_arrow = false,
         },
      },
   },
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local api = require("nvim-tree.api")

    api.tree.open()       -- tree を開く
    vim.cmd("wincmd l")   -- ← 右側のウィンドウ（ファイル側）へ移動
  end
})
