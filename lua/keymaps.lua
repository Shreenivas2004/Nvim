
--general keymaps
vim.keymap.set("n","<leader>fw",":Telescope find_files cwd=~<CR>",{desc = "Telescope find files in cwd"}) 
vim.keymap.set("n","<leader>n",":bn<CR>")
vim.keymap.set("n","<leader>p",":bp<CR>")
vim.keymap.set("n","<leader>x",":bd<CR>")
vim.keymap.set("v","<leader>c",":gc<CR>")
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle cwd<cr>")
vim.keymap.set({"n","i"},"<C-s>",":w<cr>")
vim.keymap.set("n","<C-q>",":wq<cr>")
vim.keymap.set("n","<leader>qa",":wqa<cr>")
vim.keymap.set("n","hw",":HopWord<cr>")
vim.keymap.set("n","ha",":HopAnywhere<cr>")
vim.keymap.set("n","hp",":HopPattern<cr>")
vim.keymap.set("n","<leader>st",":DBUIToggle<cr>")
vim.keymap.set("n","<leader>sa",":DBUIAddConnection<cr>")





--require keymaps:w
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require("which-key").add({
  { "<leader>f", group = "Telescope" },
  {"<leader>s",group="sql"}
})


