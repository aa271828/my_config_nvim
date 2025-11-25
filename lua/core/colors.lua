vim.cmd("syntax on")
vim.cmd("colorscheme tokyonight-moon")

-- comment
vim.api.nvim_set_hl(0, "Comment", { fg = "#88B788", italic = true })
-- ベース色
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#A4A4A4' })
vim.api.nvim_set_hl(0, 'MsgArea', { fg = '#D4D4D4' })
vim.api.nvim_set_hl(0, "MatchParen", { bg = "#FFA500", fg = nil, bold = true })

-- 透過設定
vim.cmd [[
hi Normal guibg=NONE
hi NormalNC guibg=NONE
hi EndOfBuffer guibg=NONE
hi LineNr guibg=NONE
hi SignColumn guibg=NONE
hi Terminal guibg=NONE
hi TermNormal guibg=NONE
hi TermNormalNC guibg=NONE
hi NvimTreeNormal guibg=NONE
hi NvimTreeNormalNC guibg=NONE
hi NvimTreeEndOfBuffer guibg=NONE
hi NvimTreeWinSeparator guibg=NONE
]]
