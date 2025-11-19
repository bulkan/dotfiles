return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      format = { timeout_ms = 60000 },

      -- make sure mason installs the server
      -- servers = {
      --   ts_ls = {
      --     enabled = true,
      --
      --     settings = {
      --       typescript = {
      --         reportStyleChecksAsWarnings = false,
      --         tsserver = {
      --           maxTsServerMemory = 20000,
      --         },
      --         suggest = {
      --           completeFunctionCalls = true,
      --         },
      --         preferGoToSourceDefinition = true,
      --       },
      --       javascript = {
      --         implicitProjectConfig = {
      --           checkJs = true,
      --         },
      --         suggest = {
      --           completeFunctionCalls = true,
      --         },
      --         preferGoToSourceDefinition = true,
      --       },
      --     },
      --   },
      -- },
    },
  },
}
