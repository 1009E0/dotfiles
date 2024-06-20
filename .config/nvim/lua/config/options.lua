-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.autowrite = true -- 开启 auto write
opt.clipboard = "unnamedplus" -- 同步系统粘贴版
opt.confirm = true -- 在退出修改过的缓冲区之前要确认保存更改
opt.cursorline = true -- 开启当前行高亮
opt.expandtab = true -- 使用空格(spaces)代替跳格(tabs)
opt.ignorecase = true -- 忽略大小写
opt.list = true -- 显示一些不可见字符
opt.listchars = { space = "·" } -- 用·显示空格
opt.mouse = "a" -- 开启鼠标模式
opt.number = true -- 输出行号
opt.relativenumber = true -- 相对行号
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- 缩进大小
opt.showmode = false -- 显示当前模式
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- 自动插入缩进
opt.spelllang = { "en" }
opt.splitbelow = true -- 将新窗口放在当前窗口下面
opt.splitright = true -- 将新窗口放在当前窗口右面
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- 真色支持
opt.wrap = true -- 关闭自动折行
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"
