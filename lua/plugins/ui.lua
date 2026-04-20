return {
  -- Тема
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_enable_italic = false
      vim.g.everforest_better_performance = 1
      vim.cmd.colorscheme("everforest")
    end,
  },

  -- Строка статуса внизу
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = { theme = "everforest" },
      })
    end,
  },

  -- Вкладки буферов вверху
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = { separator_style = "slant" },
      })
      vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
      vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
      vim.keymap.set("n", "<C-Tab>", ":BufferLineCycleNext<CR>")
    end,
  },

  -- Стартовый экран
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("dashboard").setup({
        theme = "hyper",
        config = {
          header = {
            "",
            "  wnchstrr  —  nvim v0.12.1",
            "  python backend",
            "",
          },
          shortcut = {
            { desc = "  find file",    group = "Label", action = "Telescope find_files", key = "f" },
            { desc = "  recent",       group = "Label", action = "Telescope oldfiles",   key = "r" },
            { desc = "  grep",         group = "Label", action = "Telescope live_grep",  key = "g" },
            { desc = "  config",       group = "Label", action = "e ~/.config/nvim/init.lua", key = "c" },
            { desc = "  updates",      group = "Label", action = "Lazy sync",            key = "u" },
            { desc = "  quit",         group = "Label", action = "qa",                   key = "q" },
          },
          packages = { enable = true },
          project = { enable = true, limit = 5, label = "recent projects" },
          mru = { limit = 5, label = "recent files" },
          footer = function()
            local stats = require("lazy").stats()
            return {
              "",
              stats.count .. " plugins loaded in " .. math.floor(stats.startuptime) .. "ms",
            }
          end,
        },
      })
    end,
  },
}
