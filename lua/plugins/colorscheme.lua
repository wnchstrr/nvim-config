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
      vim.cmd("colorscheme poimandres")
    end,
  },
}
