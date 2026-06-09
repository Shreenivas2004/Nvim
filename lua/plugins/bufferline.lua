return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        diagnostics = "nvim_lsp",
        separator_style = "slant",
      },
    })
  end,
}
