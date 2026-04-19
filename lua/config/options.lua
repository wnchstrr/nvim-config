local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8
opt.wrap = false

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

opt.clipboard = "unnamedplus"

opt.splitbelow = true
opt.splitright = true

-- Время ожидания следующей клавиши в комбинации (мс)
-- По умолчанию 1000, уменьшаем чтобы jj срабатывал быстрее
opt.timeoutlen = 300

-- Подсветка результатов поиска
opt.hlsearch = true
opt.incsearch = true    -- подсвечивать по мере набора запроса

-- Автосохранение при потере фокуса и выходе из Insert mode
opt.autowrite = true
