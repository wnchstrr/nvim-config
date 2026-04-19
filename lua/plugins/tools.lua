return {
  -- Git знаки в строках
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add          = { text = "│" },
          change       = { text = "│" },
          delete       = { text = "_" },
          topdelete    = { text = "‾" },
          changedelete = { text = "~" },
        },
      })
      -- Горячие клавиши git
      local map = vim.keymap.set
      map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>",  { desc = "Preview git hunk" })
      map("n", "<leader>gb", ":Gitsigns blame_line<CR>",    { desc = "Git blame line" })
      map("n", "<leader>gr", ":Gitsigns reset_hunk<CR>",    { desc = "Reset git hunk" })
    end,
  },

  -- Линии отступов
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup({
        indent = {
          char = "│",
        },
        scope = {
          enabled = true,
        },
      })
    end,
  },

  -- Подсказки клавиш
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup()
    end,
  },

  -- Терминал внутри nvim
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<C-\>]],
        direction = "float",         -- float, horizontal, vertical
        float_opts = {
          border = "curved",
        },
      })
    end,
  },

  -- Ruff — линтер и форматтер Python
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          python = { "ruff_format" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })
    end,
  },
}
