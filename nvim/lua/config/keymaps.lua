-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 设置 Tab 和 Shift+Tab调整缩进
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })

vim.keymap.set("n", "<Tab>", ">>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true, silent = true })
-- 这条好像没用！
vim.keymap.set("i", "<S-Tab>", "<C-d>", { noremap = true, silent = true })

-- 将 H 设置为跳转到行首，L 设置为跳转到行尾
vim.keymap.set("n", "H", "0", { noremap = true, silent = true })
vim.keymap.set("n", "L", "$", { noremap = true, silent = true })

vim.keymap.set("v", "H", "0", { noremap = true, silent = true })
vim.keymap.set("v", "L", "$", { noremap = true, silent = true })
