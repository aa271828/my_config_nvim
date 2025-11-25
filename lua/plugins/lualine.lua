-- lua/plugins/lualine.lua

vim.opt.laststatus = 3

local colors = {
   red = '#ca1243',
   grey = '#a0a1a7',
   black = '#383a42',
   white = '#f3f3f3',
   orange = '#ffc777',
   blue = '#82aaff',
   green = '#c3e88d',
   purple = '#c099ff',
}

local theme = {
   normal = {
      a = { fg = colors.black, bg = colors.blue },
      b = { fg = colors.white, bg = colors.grey },
      c = { fg = colors.black, bg = colors.white },
      z = { fg = colors.black, bg = colors.blue },
   },
   insert =  { a = { fg = colors.black, bg = colors.green } },
   visual =  { a = { fg = colors.black, bg = colors.purple } },
   replace = { a = { fg = colors.black, bg = colors.green } },
   command = { a = { fg = colors.black, bg = colors.orange}},
}


require('lualine').setup {
   options = {
      icons_enabled = false,
      theme = theme,
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      always_divide_middle = true,
      globalstatus = true,
   },
   sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'encoding' ,'filetype'},
      lualine_y = {
         function() return os.date('%H:%M:%S') end
      },
      lualine_z = {},
   },
}

