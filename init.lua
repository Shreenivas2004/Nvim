require("config.lazy")
vim.opt.cursorline = true
vim.opt.clipboard="unnamedplus"

vim.lsp.config('pyright', {
  install = true, -- Agar automatic install chahiye
})
vim.lsp.enable('pyright')
require("keymaps")
-- Lua ke liye
vim.lsp.config('lua_ls', {})
vim.lsp.enable('lua_ls')
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set('n', '<C-r>', ':belowright 10split | terminal python3 %<CR>')
vim.opt.number = true          -- Current line number dikhane ke liye
vim.opt.relativenumber = true  -- Relative numbers enable karne ke liye
vim.opt.termguicolors = true
local cmp = require('cmp')
cmp.setup.filetype({ "sql", "mysql", "plsql" }, {
  sources = {
    { name = "vim-dadbod-completion" },
    { name = "buffer" },
  },
})

