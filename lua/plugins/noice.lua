return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },

  config = function()

    require("notify").setup({
      stages = "fade_in_slide_out",
      timeout = 3000,
      top_down = false,
    })

    vim.notify = require("notify")

    require("noice").setup({

      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },

      views = {
        cmdline_popup = {
          position = {
            row = 1,
            col = "100%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "rounded",
          },
          win_options = {
            winblend = 10,
          },
        },
      },

      presets = {
        bottom_search = false,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
    })
  end,
}
