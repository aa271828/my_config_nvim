local highlight = {
   "RainbowRed", "RainbowYellow", "RainbowBlue", "RainbowOrange",
   "RainbowGreen", "RainbowViolet", "RainbowCyan",
}

local hooks = require("ibl.hooks")

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
   vim.api.nvim_set_hl(0, "RainbowRed",    { fg = "#502B2C" })
   vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#5C5330" })
   vim.api.nvim_set_hl(0, "RainbowBlue",   { fg = "#2B3A50" })
   vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#5C3A2B" })
   vim.api.nvim_set_hl(0, "RainbowGreen",  { fg = "#3A5030" })
   vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#50305C" })
   vim.api.nvim_set_hl(0, "RainbowCyan",   { fg = "#305050" })
end)

require("ibl").setup({
   indent = { char = "│", highlight = highlight },
})
