return {
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          { name = "Poimandres",      colorscheme = "poimandres" },
          { name = "Tokyo Night",     colorscheme = "tokyonight" },
          { name = "Tokyo Storm",     colorscheme = "tokyonight-storm" },
          { name = "Kanagawa",        colorscheme = "kanagawa" },
          { name = "Catppuccin",      colorscheme = "catppuccin" },
          { name = "Everforest",      colorscheme = "everforest" },
          { name = "Gruvbox",         colorscheme = "gruvbox" },
        },
        livePreview = true,  -- превью темы при наведении в списке
      })
    end,
  },
}
