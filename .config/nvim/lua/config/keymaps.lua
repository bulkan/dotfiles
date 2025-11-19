-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>wz", "<cmd>WindowsMaximize<CR>")
vim.keymap.set("n", "<leader>w=", "<cmd>WindowsEqualize<CR>")

-- copy current file path
vim.keymap.set("n", "cp", ':let @+ = expand("%?")<CR>')

vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Open LazyVim" })

-- FzfLua
vim.keymap.set("n", "<leader>sm", "<cmd>FzfLua marks<CR>", { desc = "Search marks" })
vim.keymap.set("n", "0", ":FzfLua buffers<CR>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>P", ":FzfLua commands<CR>")
vim.keymap.set("v", "<leader>sw", ":FzfLua grep_visual git_icons=false<CR>", { desc = "Grep visual selection" })
-- vim.keymap.set("n", "<leader><leader>", ":FzfLua live_grep_glob git_icons=false<CR>", { desc = "Search by Grep" })
vim.keymap.set("n", "<leader><leader>", ":FzfLua oldfiles git_icons=false<CR>", { desc = "Old Files" })
vim.keymap.set("n", "<leader>sg", ":FzfLua live_grep_resume<CR>", { desc = "Live Grep Resume" })
vim.keymap.set("n", "<leader>sf", ":FzfLua files git_icons=false<CR>", { desc = "Search files" })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

--
vim.keymap.set(
  "n",
  "<leader>wp",
  ':lua require("nvim_winpick").pick_focus_window()<cr>',
  { desc = "Select window focus" }
)
vim.keymap.set(
  "n",
  "<leader>wk",
  ':lua require("nvim_winpick").pick_close_window()<cr>',
  { desc = "Select window to close" }
)
vim.keymap.set("n", "<leader>wS", ':lua require("nvim_winpick").pick_swap_window()<cr>', { desc = "Swap windows" })

-- nvim-rest
vim.keymap.set("n", "<leader>rr", ":Rest run<CR>", { desc = "Rest run" })
vim.keymap.set("n", "<leader>rl", ":Rest last<CR>", { desc = "Rest last" })
vim.keymap.set("n", "<leader>rL", ":Rest logs<CR>", { desc = "Rest logs" })
vim.keymap.set("n", "<leader>re", ":Rest env<CR>", { desc = "Rest env" })
vim.keymap.set("n", "<leader>res", ":Rest env show<CR>", { desc = "Rest env show" })
vim.keymap.set("n", "<leader>reS", ":Rest env select<CR>", { desc = "Rest env select" })
