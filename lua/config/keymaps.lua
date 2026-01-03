-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- for going back to normal mode from insert mode and saving a file in insert mode
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = false })
vim.api.nvim_set_keymap("i", "ss", "<ESC>:write<CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "ss", ":write<CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "sa", "ggVG", { noremap = false })

vim.keymap.set({ "n", "i" }, "<leader>qp", function()
  local row = vim.api.nvim_win_get_cursor(0)[1]
  vim.api.nvim_buf_set_lines(0, row, row, false, {
    "```{python}",
    "",
    "```",
  })
  -- move cursor to the blank line inside the block
  vim.api.nvim_win_set_cursor(0, { row + 2, 0 })
  vim.cmd("startinsert")
end, { desc = "Insert Quarto python block" })
