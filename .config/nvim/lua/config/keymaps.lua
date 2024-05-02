-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>p", "<cmd>Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>P", "<cmd>Commands<CR>")

vim.keymap.set("n", "<leader>wz", "<cmd>WindowsMaximize<CR>")
vim.keymap.set("n", "<leader>w=", "<cmd>WindowsEqualize<CR>")

-- copy current file path
vim.keymap.set("n", "cp", ':let @+ = expand("%?")<CR>')

-- grepping
vim.keymap.set("n", "<leader>/", function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    preview = true,
  }))
end, { desc = "[/] Fuzzily search in current buffer]" })

vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "Find recently opened files" })

vim.keymap.set("n", "<leader>sW", ":FzfLua grep_visual<CR>", { desc = "Grep visual selection" })
vim.keymap.set("n", "<leader>sg", ":FzfLua live_grep_glob<CR>", { desc = "Search by Grep" })
vim.keymap.set("n", "<C-f>", ":FzfLua live_grep_glob<CR>", { desc = "Search by Grep" })
vim.keymap.set(
  "n",
  "<leader>lg",
  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { desc = "Live Grep" }
)

vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Open LazyVim" })

-- FzfLua
vim.keymap.set("n", "ms", "<cmd>FzfLua marks<CR>", { desc = "Search marks" })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
