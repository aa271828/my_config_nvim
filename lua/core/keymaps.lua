local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- disable mouse
--vim.opt.mouse = ""
-- allow use of arrow keys
local arrow_keys = { "Up", "Down", "Left", "Right" }
for _, key in ipairs(arrow_keys) do
  keymap("n", "<" .. key .. ">", "<Nop>", opts)
  keymap("i", "<" .. key .. ">", "<Nop>", opts)
  keymap("v", "<" .. key .. ">", "<Nop>", opts)
  keymap("x", "<" .. key .. ">", "<Nop>", opts)
end

-- Escape
keymap("i", "jk", "<Esc>", opts)
keymap("i", "kj", "<Esc>", opts)

-- コピー関連
keymap("n", "x", '"_x', opts)
keymap("v", "x", '"_x', opts)
keymap("x", ">", ">gv", opts)
keymap("x", "<", "<gv", opts)

-- ToggleTerm
keymap('n', '<C-t>', function()
  if vim.bo.buftype == '' then vim.cmd('w') end
  vim.cmd('ToggleTerm')
end, opts)
keymap('t', '<C-t>', '<cmd>ToggleTerm<CR>', opts)
keymap('t', '<C-v>', '<C-\\><C-N>"+p<C-\\><C-N>i', opts)

-- NvimTree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
