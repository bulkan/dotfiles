-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false

vim.opt.shell = "/opt/homebrew/bin/fish"

-- vim.g.root_spec = { "cwd", "lsp", { ".git", "lua" } }
--
-- -- Horizontal cursor line
vim.opt.cursorline = true

-- Vertical cursor line
vim.opt.cursorcolumn = true

vim.opt.scrolloff = 10

-- Wrap lines
vim.opt.wrap = true

-- Preserve indentation of virtual line
vim.opt.breakindent = true
