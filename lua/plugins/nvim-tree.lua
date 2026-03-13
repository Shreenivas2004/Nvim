return{
  "nvim-tree/nvim-tree.lua",
  config = function()
    local function my_on_attach(bufnr)
      local api = require("nvim-tree.api")

      -- VERY IMPORTANT
      api.config.mappings.default_on_attach(bufnr)

      -- your custom mappings
      vim.keymap.set("n", "C", api.tree.change_root_to_node, { buffer = bufnr })
      vim.keymap.set("n", "-", api.tree.change_root_to_parent, { buffer = bufnr })
    end

    require("nvim-tree").setup({
      on_attach = my_on_attach,
    })
  end,
}



