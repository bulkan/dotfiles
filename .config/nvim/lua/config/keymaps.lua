-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>wz", "<cmd>WindowsMaximize<CR>")
vim.keymap.set("n", "<leader>w=", "<cmd>WindowsEqualize<CR>")

vim.keymap.del("n", "<leader><space>")
-- vim.keymap.del("n", "<leader>sg")
-- vim.keymap.del("n", "<leader>sG")
-- vim.keymap.del("n", "<leader>sw")
-- vim.keymap.del("n", "<leader>sW")

-- copy current file path
vim.keymap.set("n", "cp", ':let @+ = expand("%?")<CR>')

-- greppin:Rg
-- vim.keymap.set("n", "<leader>/", function()
--   -- You can pass additional configuration to telescope to change theme, layout, etc.
--   require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
--     preview = true,
--   }))
-- end, { desc = "[/] Fuzzily search in current buffer]" })

-- vim.keymap.set("n", "<leader>sG", ":FzfLua live_grep_glob git_files=false<CR>", { desc = "Search by Grep (No Git)" })
-- vim.keymap.set("n", "<C-f>", ":FzfLua live_grep_glob<CR>", { desc = "Search by Grep" })

vim.keymap.set(
  "n",
  "<leader>lg",
  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { desc = "Live Grep" }
)

vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Open LazyVim" })

-- FzfLua
vim.keymap.set("n", "<leader>sm", "<cmd>FzfLua marks<CR>", { desc = "Search marks" })
vim.keymap.set("n", "0", ":FzfLua buffers<CR>", { desc = "Buffers" })
-- vim.keymap.set("n", "<leader>f", ":FzfLua oldfiles<CR>", { desc = "Git Files" })
vim.keymap.set("n", "<leader>P", ":FzfLua commands<CR>")
vim.keymap.set("v", "<leader>sw", ":FzfLua grep_visual git_icons=false<CR>", { desc = "Grep visual selection" })
vim.keymap.set("n", "<leader>sg", ":FzfLua live_grep_glob git_icons=false<CR>", { desc = "Search by Grep" })
vim.keymap.set("n", "<leader>sf", ":FzfLua files git_icons=false<CR>", { desc = "Search files" })
vim.keymap.set("n", "<leader><space>", ":FzfLua oldfiles git_icons=false<CR>", { desc = "Old Files" })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

--- Neotree
-- vim.keymap.set("n", "<leader>n", "<cmd>Neotree position=float reveal toggle<CR>", { desc = "Toggle file tree" })
--

-- TogglTerm
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle terminal" })
vim.keymap.set("t", "<leader>tt", "<C-\\><C-n><C-w>l", { desc = "Hide terminal" })
