--general keymaps
vim.keymap.set("n", "<leader>fw", ":Telescope find_files cwd=~<CR>", { desc = "Telescope find files in cwd" })
vim.keymap.set("n", "<leader>n", ":bn<CR>")
vim.keymap.set("n", "<leader>p", ":bp<CR>")
vim.keymap.set("n", "<leader>x", ":bd<CR>")
vim.keymap.set("v", "<leader>c", ":gc<CR>")
vim.keymap.set("n", "<C-n>", ":NvimTreeFocus <cr>")
vim.keymap.set("n", "C-s>", ":w<cr>")
vim.keymap.set("n", "<C-q>", ":q!<cr>")
vim.keymap.set("n", "<leader>qa", ":wqa<cr>")
vim.keymap.set("n", "hw", ":HopWord<cr>")
vim.keymap.set("n", "ha", ":HopAnywhere<cr>")
vim.keymap.set("n", "hp", ":HopPattern<cr>")
vim.keymap.set("n", "<leader>st", ":DBUIToggle<cr>")
vim.keymap.set("n", "<leader>sa", ":DBUIAddConnection<cr>")
vim.keymap.set("n", "<leader>t",function ()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0,10)
<<<<<<< HEAD
 
end)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = "Exit terminal mode" })
vim.keymap.set("n", "<C-a>", ":%y<cr>")
=======
  
end)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = "Exit terminal mode" })

>>>>>>> 2bbd77c7176297dacb6016f2d75072bd382c8f09
--require keymaps:w
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

require("which-key").add({
  { "<leader>f", group = "Telescope" },
  { "<leader>s", group = "sql" },
  { "<leader>q", group = "quit" },
  {"<leader>t", group = "terminal"}
})
