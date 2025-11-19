return {
  "pmizio/typescript-tools.nvim",
  --dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },

  opts = {
    expose_as_code_action = "all",
    publish_diagnostic_on = "change",
    tsserver_max_memory = 18432,
    tsserver_file_preferences = {
      importModuleSpecifierPreference = "relative",
      includeCompletionsForModuleExports = true,
      includeInlayParameterNameHints = "all",
    },
    jsx_close_tag = {
      enable = true,
      filetypes = { "typescriptreact" },
    },
    root_dir = function(_, bufnr)
      local function root_dir_from_pattern(pattern)
        local root_dir = vim.fs.root(bufnr, pattern)
        return root_dir or vim.loop.cwd()
      end

      local function yarn_lock_root_dir()
        return root_dir_from_pattern("yarn.lock")
      end

      return yarn_lock_root_dir()
    end,
  },
}
