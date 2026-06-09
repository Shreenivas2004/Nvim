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
require("rust") 
vim.opt.spell = true
<<<<<<< HEAD
vim.diagnostic.config({
  virtual_text = {
    severity = { min = vim.diagnostic.severity.ERROR }, -- Sirf Errors dikhao
  },
  underline = {
    severity = { min = vim.diagnostic.severity.ERROR },
  },
  signs = true,
})
=======
>>>>>>> 2bbd77c7176297dacb6016f2d75072bd382c8f09
