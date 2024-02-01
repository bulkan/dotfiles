-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("oil").setup()

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
