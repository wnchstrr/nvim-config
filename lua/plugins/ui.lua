return {
  -- Тема Everforest
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
        options = {
          theme = "everforest",
        },
      })
    end,
  },

  -- Вкладки буферов вверху
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          separator_style = "slant",
        },
      })
      -- Переключение через Tab и Ctrl+Tab
      vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
      vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
      vim.keymap.set("n", "<C-Tab>", ":BufferLineCycleNext<CR>")
    end,
  },
}
