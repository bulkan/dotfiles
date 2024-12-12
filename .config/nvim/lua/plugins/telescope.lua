return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  config = function()
    require("telescope").setup({
      keys = {
        { "<leader>sm", false },
        { "<leader>sg", false },
        { "<leader>sG", false },
        { "<leader>sw", false },
        { "<leader>sW", false },
        { "<leader>ff", false },
        { "<leader>fF", false },
      },
    })
  end,
  dependencies = {
    {
      "princejoogie/dir-telescope.nvim",

      config = function()
        LazyVim.on_load("telescope.nvim", function()
          require("telescope").load_extension("dir")
        end)
      end,
    },
  },
}
