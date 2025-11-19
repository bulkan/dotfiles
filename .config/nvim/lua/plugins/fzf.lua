return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({
      winopts = {
        preview = {
          layout = "flex",
          default = "bat",
          border = "none",
        },
        backdrop = 40,
        -- split = "belowright new",
      },
      rg_glob = true, -- enable glob parsing by default to all -- grep providers? (default:false)
      glob_flag = "--iglob", -- for case sensitive globs use '--glob'
      glob_separator = "%s%-%-", -- query separator pattern (lua): ' --',
      git_icons = false,
    })
  end,
  keys = {
    { "<leader><space>", false },
    { "<leader>sg", false },
  },
}
