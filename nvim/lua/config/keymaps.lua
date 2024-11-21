-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- 设置 Tab 和 Shift+Tab 调整缩进
map("v", "<Tab>", ">gv", opts) -- 可视模式下按 Tab 增加缩进
map("v", "<S-Tab>", "<gv", opts) -- 可视模式下按 Shift+Tab 减少缩进

map("n", "<Tab>", ">>", opts) -- 普通模式下按 Tab 增加当前行缩进
map("n", "<S-Tab>", "<<", opts) -- 普通模式下按 Shift+Tab 减少当前行缩进
map("i", "<S-Tab>", "<C-d>", opts) -- 插入模式下按 Shift+Tab 减少缩进

-- 将 H 设置为跳转到行首，L 设置为跳转到行尾
-- 注意避免与 buffer 切换快捷键冲突
map("n", "H", "^", opts) -- 可视模式下按 H 跳转到行首
map("n", "L", "g_", opts) -- 可视模式下按 L 跳转到行尾（忽略换行符）
map("v", "H", "^", opts) -- 可视模式下按 H 跳转到行首
map("v", "L", "g_", opts) -- 可视模式下按 L 跳转到行尾（忽略换行符）

-- 允许在 neovim 中使用剪贴板粘贴
vim.g.neovide_input_use_logo = 1 -- 开启 Neovide 的 Command 键支持
map("", "<D-v>", '"+p<CR>', opts) -- 普通模式下 Command+V 粘贴
map("!", "<D-v>", "<C-R>+", opts) -- 插入模式下 Command+V 粘贴
map("t", "<D-v>", "<C-R>+", opts) -- 终端模式下 Command+V 粘贴
map("v", "<D-v>", '"+p', opts) -- 可视模式下 Command+V 粘贴

-- 使用 Command + 上下左右调整窗口大小
map("n", "<D-Up>", ":resize +2<CR>", opts) -- 增大窗口高度
map("n", "<D-Down>", ":resize -2<CR>", opts) -- 减小窗口高度
map("n", "<D-Left>", ":vertical resize -2<CR>", opts) -- 减小窗口宽度
map("n", "<D-Right>", ":vertical resize +2<CR>", opts) -- 增大窗口宽度
