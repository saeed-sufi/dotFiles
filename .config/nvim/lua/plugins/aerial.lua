return {
  "stevearc/aerial.nvim",
  config = function()
    require("aerial").setup({
      filter_kind = { "Class", "Constant", "Enum", "Field", "Method", "Interface", "Object", "Function" },
    })
  end,
    dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
