# nvim-config

Личный конфиг Neovim для Python бэкенд-разработки. Построен с нуля на `lazy.nvim` и встроенном LSP API Neovim 0.11+.

![Neovim](https://img.shields.io/badge/Neovim-0.12+-57A143?style=flat-square&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-5.1-000080?style=flat-square&logo=lua&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu_26.04-E95420?style=flat-square&logo=ubuntu&logoColor=white)
---

## Структура

```
~/.config/nvim/
├── init.lua
└── lua/
    ├── config/
    │   ├── options.lua       настройки редактора
    │   ├── keymaps.lua       горячие клавиши
    │   ├── lsp.lua           настройка LSP и keymaps
    │   └── lazy.lua          менеджер плагинов
    └── plugins/
        ├── ui.lua            lualine, bufferline, dashboard
        ├── colorscheme.lua   темы + переключатель (themery)
        ├── themery.lua       переключатель тем
        ├── editor.lua        neo-tree, telescope, treesitter, surround
        ├── lsp.lua           mason, pyright, nvim-cmp
        └── tools.lua         gitsigns, which-key, toggleterm, conform

```

---

## Плагины

| Плагин | Назначение |
|---|---|
| `lazy.nvim` | Менеджер плагинов с ленивой загрузкой |
| `themery` | Переключатель тем на лету |
| `bg.nvim` | Синхрон фона терминала с темой (прозрачность)|
| Темы | poimandres, tokyonight, kanagawa, catppuccin, everforest, gruvbox |
| `lualine` | Строка статуса |
| `bufferline` | Вкладки файлов сверху |
| `dashboard-nvim` | Стартовый экран |
| `neo-tree` | Файловый менеджер |
| `telescope` | Fuzzy поиск по файлам и тексту |
| `nvim-treesitter` | Подсветка синтаксиса |
| `nvim-surround` | Обёртка в кавычки, скобки |
| `nvim-autopairs` | Автозакрытие скобок и кавычек |
| `mason` | Менеджер LSP серверов |
| `nvim-lspconfig` | LSP API |
| `nvim-cmp` | Автодополнение |
| `pyright` | LSP для Python |
| `gitsigns` | Git изменения в строках |
| `indent-blankline` | Линии отступов |
| `which-key` | Подсказки клавиш |
| `toggleterm` | Встроенный терминал |
| `conform` + `ruff` | Форматтер Python при сохранении |
| `todo-comments` | Подсветка TODO/FIXME/NOTE |
| `vim-illuminate` | Подсветка вхождений слова под курсором |
| `smear-cursor` | Анимация курсора |
| `emmet-ls` | Emmet-аббревиатуры для HTML/CSS |

## Установка

Убедись что установлен Neovim 0.11+:

```bash
nvim --version
```

Клонируй конфиг:

```bash
git clone git@github.com:wnchstrr/nvim-config.git ~/.config/nvim
```

Запусти `nvim` — `lazy.nvim` автоматически скачает все плагины, а `mason` установит `pyright` и `ruff` для Python.

---

## Окружение

- **ОС:** Ubuntu 26.04 LTS
- **Терминал:** Ghostty
- **Шрифт:** JetBrains Mono Nerd Font
- **Shell:** zsh
- **Темы:** themery (переключатель)

---

## License

MIT
