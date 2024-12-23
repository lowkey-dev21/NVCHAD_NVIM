require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
require('lualine').setup {
  sections = {
    lualine_c = {'filename', {'diagnostics', sources = {'nvim_lsp'}}},
    lualine_x = {'filetype', 'encoding'},
  }
}

