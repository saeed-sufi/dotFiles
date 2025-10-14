return {
  "olimorris/codecompanion.nvim",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim",
  },
  config = function()
    require("codecompanion").setup({
      -- Add your configuration here
      -- For example:
      -- language = "python",
      -- model = "gpt-3.5-turbo",
      extensions = {
        mcphub = {
          callback = "mcphub.extensions.codecompanion",
          opts = {
            show_result_in_chat = true, -- Show mcp tool results in chat
            make_vars = true, -- Convert resources to #variables
            make_slash_commands = true, -- Add prompts as /slash commands

          },
        },
      },
    })
  end,
}
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
  -- config = function()
  -- require("codecompanion").setup({
  -- Add your configuration here
  -- For example:
  -- language = "python",
  -- model = "gpt-3.5-turbo",
  -- extensions = {},
  -- })
  -- end,
}
