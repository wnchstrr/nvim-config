return {
  -- Запасные (не активные)
  {
    "sainnhe/everforest",
    lazy = true,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
  },
  -- Активная
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme tokyonight")
    end,
  },
}
