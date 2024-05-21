-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd("set textwidth=0")
vim.cmd("set wrapmargin=0")
vim.cmd("set wrap")
vim.cmd("set nonumber")

vim.g.clipboard = "{\
     'name': 'bufTermux',\
     'copy': {\
        '*': {lines, regtype -> extend(g:, {'foo': [lines, regtype]}) },\
        '+': ['termux-clipboard-set'],\
      },\
     'paste': {\
        '*': {-> get(g:, 'foo', [])},\
        '+': ['termux-clipboard-get'],\
     },\
     'cache_enabled': 1,\
   }"

