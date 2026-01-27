return {
  -- 1. Установка самого плагина Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false, -- Тема должна загружаться сразу при старте
    priority = 1000, -- Ставим самый высокий приоритет загрузки
    config = function()
      require("gruvbox").setup {
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = "hard", -- Можно выбрать "soft", "medium" или "hard"
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = true, -- ВОТ ОНО: включает прозрачность в самом плагине
      }
    end,
  },
}
