return {
  -- Запасные (не активные)
  {
    "sainnhe/everforest",
    lazy = true,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
  },
  -- Активная
{
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = "dark"
    vim.cmd("colorscheme gruvbox")
  end,
 },
}
