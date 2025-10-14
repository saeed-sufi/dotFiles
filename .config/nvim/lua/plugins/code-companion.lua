return {
  "olimorris/codecompanion.nvim",
  opts = {

    strategies = {
      chat = {
        adapter = "deepseek",
        model = "deepseek-coder",
      },
    },
    opts = {
      log_level = "DEBUG",
    },
    adapters = {
      http = {
        deepseek = function()
          return require("codecompanion.adapters").extend("deepseek", {
            env = {
              api_key = "sk-",
            },
          })
        end,
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
