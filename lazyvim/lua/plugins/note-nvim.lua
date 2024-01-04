return {
  "gsuuon/note.nvim",
  opts = {
    -- Spaces are note roots. These directories should contain a `./notes` directory (will be made if not).
    -- Defaults to { '~' }.
    spaces = {
      "~/Code/bulkan/",
    },

    -- Set keymap = false to disable keymapping
    keymap = {
      prefix = "<leader>o",
    },
  },
  cmd = "Note",
  ft = "note",
}
