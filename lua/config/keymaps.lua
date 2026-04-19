local map = vim.keymap.set

vim.g.mapleader = " "

map("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle file tree" })

map("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", ":Telescope live_grep<CR>",  { desc = "Search in files" })
map("n", "<leader>fb", ":Telescope buffers<CR>",    { desc = "Find buffers" })

map("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to bottom split" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to top split" })

map("n", "<leader>bn", ":bnext<CR>",  { desc = "Next buffer" })
map("n", "<leader>bp", ":bprev<CR>",  { desc = "Prev buffer" })
map("n", "<leader>bd", ":bd<CR>",     { desc = "Close buffer" })

map("n", "<leader>s", ":w<CR>",  { desc = "Save file" })
map("n", "<leader>q", ":q<CR>",  { desc = "Quit" })

map("n", "<Esc>", ":nohlsearch<CR>", { desc = "Clear search highlight" })

map("i", "jj", "<Esc>", { desc = "Exit insert mode" })
map("i", "<C-c>", "<Esc>", { desc = "Exit insert mode" })

-- Сохранить и запустить Python
map("n", "<leader>r", ":w<CR>:!python3 %<CR>", { desc = "Run Python file" })

-- Запуск Python с полным путём
vim.keymap.set("n", "<leader>r", ":w<CR>:!/usr/bin/python3 %<CR>", { desc = "Run Python file" })
