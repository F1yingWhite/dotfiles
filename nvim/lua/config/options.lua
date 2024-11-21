-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = true
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_vfx_particle_density = 100.0
local opt = vim.opt

opt.spell = false
vim.opt.clipboard = "unnamedplus"
if vim.g.neovide then
  vim.g.neovide_transparency = 0.7
  vim.g.neovide_no_title = true
  vim.g.neovide_window_blurred = true
  vim.cmd([[ highlight Normal guibg=NONE ]])
  vim.g.neovide_hide_titlebar = true
end
