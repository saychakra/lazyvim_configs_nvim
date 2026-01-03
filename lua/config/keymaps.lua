-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- for going back to normal mode from insert mode and saving a file in insert mode
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = false })
vim.api.nvim_set_keymap("i", "ss", "<ESC>:write<CR>", { noremap = false })
