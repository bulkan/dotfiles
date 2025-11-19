-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false

vim.opt.shell = "/opt/homebrew/bin/fish"

vim.g.snacks_animate = false

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

vim.log.level = vim.log.levels.INFO
vim.g.rest_nvim = {
  log_level = vim.log.levels.INFO,
}

-- vim.diagnostic.config({
-- Use the default configuration
-- virtual_lines = true,

-- Alternatively, customize specific options
-- virtual_lines = {
--  -- Only show virtual line diagnostics for the current cursor line
--  current_line = true,
-- },
-- })
