return {
  "nvim-telescope/telescope.nvim",
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
