---@type LazySpec
return {
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      -- Отключаем попытки Mason установить эти серверы
      mason = {
        install_pants = false, -- Чтобы Mason не лез куда не надо
      },
      -- Настройка серверов
      servers = {
        "nixd", -- Явно указываем использовать nixd
      },
      -- Конфигурация конкретно для nixd
      config = {
        nixd = {
          settings = {
            nixd = {
              nixpkgs = {
                expr = "import <nixpkgs> {}",
              },
              formatting = {
                command = { "nixpkgs-fmt" },
              },
            },
          },
        },
      },
    },
  },
}
