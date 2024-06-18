vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- Normal --
-- 更好的窗口移动
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- 窗口大小调整
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "<C-Up>", ":resize +2<CR>", opt)
map("n", "<C-Down>", ":resize -2<CR>", opt)

-- Insert --
-- JK退出插入模式
map("i", "jk", "<ESC>", opts)

-- Visual
-- 视觉模式缩进
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- 上下移动选中文本
map("v", "<A-j>", ":move '>+1<CR>gv=gv", opt)
map("v", "<A-k>", ":move '<-2<CR>gv=gv", opt)
