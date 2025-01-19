-- Leader
vim.g.mapleader = " "

-- Normal Mode
vim.keymap.set("i", "jj", "<Esc>")

-- Buffers
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "\\", ":split<CR>")

-- Split Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- NeoTree
vim.keymap.set("n", "<leader>t", ":Neotree left reveal toggle<CR>")

--Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<c-x>", ":BufferLineCloseOthers<CR>")
