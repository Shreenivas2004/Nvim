return {
  -- 7. Github Copilot
  { "github/copilot.vim" },
  -- 8. LSP, Mason, CMP & LuaSnip (VS Code jaisa Autocomplete aur suggestions)
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Tab dabane pe autocomplete hoga
        }),
        sources = { { name = "nvim_lsp" }, { name = "luasnip" } },
      })
    end,
  },
}
