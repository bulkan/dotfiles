-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>p", "<cmd>Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>P", "<cmd>Commands<CR>")
vim.keymap.set("n", "<leader>wz", "<cmd>WindowsMaximize<CR>")
vim.keymap.set("n", "<leader>w=", "<cmd>WindowsEqualize<CR>")
vim.keymap.set("n", "cp", ':let @+ = expand("%?")<cr>')
