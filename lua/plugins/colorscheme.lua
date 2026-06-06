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
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({})
    end,
  },
  -- Дополнительные тёмные темы (грузятся по выбору)
  {
    "folke/tokyonight.nvim",
    lazy = true,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",  -- иначе lazy назовёт папку "nvim", конфликт
    lazy = true,
  },
  -- Синхрон фона терминала с темой (прозрачность/блюр)
  {
    "typicode/bg.nvim",
    lazy = false,
  },
}
