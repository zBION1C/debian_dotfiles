return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    -- 1. Explicitly force the adapter to use a Flash model
    adapters = {
      gemini = function()
        return require("codecompanion.adapters").extend("gemini", {
          schema = {
            model = {
              default = "gemini-2.5-flash", -- Change to "gemini-2.0-flash" if preferred
            },
          },
        })
      end,
    },
    -- 2. Bind your strategies to your newly modified adapter
    strategies = {
      chat = { adapter = "gemini" },
      inline = { adapter = "gemini" },
    },
    opts = {
      log_level = "DEBUG",
    },
  },
}
