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
          preview = {
            treesitter = false,
          },
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

  -- Smooth cursor--
  {
  "sphamba/smear-cursor.nvim",
  opts = {
  stiffness = 0.7,
  trailing_stiffness = 0.6,
  damping = 0.95,
  distance_stop_animating = 0.5,
  hide_target_hack = true,
  cursor_color = "none",
 },
 },
}
