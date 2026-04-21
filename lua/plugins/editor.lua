return {
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- Файловый менеджер
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        window = { width = 30 },
      })
    end,
  },

  -- Fuzzy поиск
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = {
            "__pycache__/",
            "__pycache__",
            "%.pyc",
            "%.pyo",
            "node_modules/",
            "%.git/",
            "%.bmp",
            "%.zip",
            "%.png",
            "%.jpg",
            "%.jpeg",
            "%.gif",
            "%.pdf",
          },
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--glob=!__pycache__",
            "--glob=!*.pyc",
          },
        },
      })
    end,
  },

  -- Подсветка синтаксиса
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      vim.treesitter.language.register("python", "python")
      require("nvim-treesitter").setup({
        ensure_installed = { "python", "lua", "bash", "markdown" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  -- Обёртка в кавычки и скобки
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  -- Комментирование
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },
}
